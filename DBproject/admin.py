from db_connection import connect_to_db
from datetime import date

def get_reservation_info():
    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return

    cursor = db.cursor()

    query = """
        SELECT users.Name, books.Title, reservations.QueueNumber
        FROM reservations
        JOIN users ON reservations.UserID = users.UserID
        JOIN books ON reservations.BookID = books.BookID
        ORDER BY reservations.ReservationDate;
    """

    cursor.execute(query)
    results = cursor.fetchall()

    print("\n==== 예약자 정보 ====")
    print("예약자 이름 | 책 제목 | 예약 순번")
    for row in results:
        print(f"{row[0]} | {row[1]} | {row[2]}")

    cursor.close()
    db.close()

def get_overdue_info():
    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return

    cursor = db.cursor()

    today = date.today()

    query = """
        SELECT users.Name, books.Title, borrowrecords.BorrowDate, borrowrecords.DueDate
        FROM borrowrecords
        JOIN users ON borrowrecords.UserID = users.UserID
        JOIN books ON borrowrecords.BookID = books.BookID
        WHERE borrowrecords.ReturnDate IS NULL AND borrowrecords.DueDate < %s
    """

    cursor.execute(query, (today,))
    results = cursor.fetchall()

    print("\n==== 연체자 정보 ====")
    print("연체자 이름 | 책 제목 | 빌린 날짜 | 반납 기한 | 연체된 일수")
    for row in results:
        overdue_days = (today - row[3]).days
        print(f"{row[0]} | {row[1]} | {row[2]} | {row[3]} | {overdue_days}일")

    cursor.close()
    db.close()

def admin_menu():
    while True:
        print("\n==== 관리자 메뉴 ====")
        print("1. 예약자 정보 조회")
        print("2. 연체자 정보 조회")
        print("3. 종료")
        
        choice = input("선택: ")

        if choice == "1":
            get_reservation_info()
        elif choice == "2":
            get_overdue_info()
        elif choice == "3":
            print("관리자 메뉴를 종료합니다.")
            break
        else:
            print("잘못된 선택입니다.")