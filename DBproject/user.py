import hashlib
from db_connection import connect_to_db

def login():
    email = input("이메일: ")
    password = input("비밀번호: ")

    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return None

    cursor = db.cursor()
    query = "SELECT * FROM users WHERE Email = %s"
    cursor.execute(query, (email,))
    user = cursor.fetchone()

    if user is None:
        print("존재하지 않는 이메일입니다.")
        db.close()
        return None

    hashed_password = hashlib.sha256(password.encode()).hexdigest()
    if hashed_password == user[4]:
        is_admin = user[5]
        print(f"로그인 성공! 환영합니다, {user[1]}님.")
        
        if is_admin == 1:
            print("관리자 권한이 부여되었습니다.")
        
        db.close()
        return user
    else:
        print("비밀번호가 일치하지 않습니다.")
        db.close()
        return None



def signup():
    email = input("이메일: ")
    password = input("비밀번호: ")
    name = input("이름: ")

    hashed_password = hashlib.sha256(password.encode()).hexdigest()

    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return None

    cursor = db.cursor()
    
    query = "SELECT * FROM users WHERE Email = %s"
    cursor.execute(query, (email,))
    existing_user = cursor.fetchone()

    if existing_user:
        print("이미 존재하는 이메일입니다.")
        db.close()
        return None

    query = "INSERT INTO users (Email, Password, Name) VALUES (%s, %s, %s)"
    cursor.execute(query, (email, hashed_password, name))
    db.commit()

    print(f"회원가입이 완료되었습니다, {name}님!")
    db.close()
    return email

def check_membership_status(user_id):
    db = connect_to_db()
    if db is None:
        print("데이터베이스 연결 실패")
        return

    cursor = db.cursor()
    query = "SELECT MembershipStatus FROM users WHERE UserID = %s"
    cursor.execute(query, (user_id,))
    status = cursor.fetchone()

    if status:
        print(f"연체 상태: {status[0]}")
    else:
        print("연체 상태를 확인할 수 없습니다.")
    
    db.close()
