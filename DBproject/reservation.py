from db_connection import connect_to_db

def check_reservation(user_id):
    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return

    cursor = db.cursor()
    query = "SELECT * FROM reservations WHERE UserID = %s"
    cursor.execute(query, (user_id,))
    reservation = cursor.fetchone()

    if reservation:
        print(f"현재 예약 상태: {reservation[1]} - 예약 일자: {reservation[2]}")
    else:
        print("현재 예약된 내역이 없습니다.")
    
    db.close()
