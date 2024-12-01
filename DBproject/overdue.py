from db_connection import connect_to_db
from datetime import datetime

def check_overdue_books(user_id):
    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return

    cursor = db.cursor()
    today = datetime.today().date()

    query = """
    SELECT books.BookID, books.Title, borrowrecords.DueDate
    FROM borrowrecords
    JOIN books ON borrowrecords.BookID = books.BookID
    WHERE borrowrecords.UserID = %s AND borrowrecords.ReturnDate IS NULL AND borrowrecords.DueDate < %s
    """
    cursor.execute(query, (user_id, today))

    overdue_books = cursor.fetchall()

    if overdue_books:
        print("연체 중인 책:")
        for book in overdue_books:
            print(f"제목: {book[1]}, 연체 일자: {book[2]}")
    else:
        print("연체 중인 책이 없습니다.")

    db.close()