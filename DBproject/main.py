from user import login, signup
from reservation import check_reservation
from overdue import check_overdue_books
from search import search_books
from admin import admin_menu

def main():
    print("==== 메인 화면 ====")
    print("1. 로그인")
    print("2. 회원가입")
    print("3. 종료")
    choice = input("선택: ")

    if choice == "1":
        user = login()
        if user:
            print("\n==== 로그인 완료 ====")
            while True:
                if user[5] == 1:  # 관리자인 경우
                    print(f"\n이름: {user[1]} | 연체상태: {user[6]} | 관리자 여부: 예")
                else:
                    print(f"\n이름: {user[1]} | 연체상태: {user[6]}")
                print("1. 책 검색")
                print("2. 현재 예약 상태")
                print("3. 현재 연체 상태")
                print("4. 로그아웃")

                if user[5] == 1:
                    print("9. 관리자 메뉴")
                
                menu_choice = input("선택: ")

                if menu_choice == "1":
                    search_books()
                elif menu_choice == "2":
                    check_reservation(user[0])
                elif menu_choice == "3":
                    check_overdue_books(user[0])
                elif menu_choice == "4":
                    print("로그아웃 되었습니다.")
                    break
                elif menu_choice == "9" and user[5] == 1:
                    admin_menu()
                else:
                    print("잘못된 선택입니다.")
        else:
            print("로그인 실패")
            main()
    elif choice == "2":
        signup()
        main()
    elif choice == "3":
        print("프로그램을 종료합니다.")
    else:
        print("잘못된 선택입니다.")


if __name__ == "__main__":
    main()