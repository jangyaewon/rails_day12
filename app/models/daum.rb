class Daum < ApplicationRecord
    has_many :memberships
    has_many :users, through: :memberships
    has_many :posts
    
    #   클래스 메소드 : Daum.find(5)
    # 인스턴스 메소드 : daum = Daum.find(5)
    
    # def self.메소드명 --> 클래스 메소드
    #     로직안에서 self를 쓸 수 없다.
    # end
    
    # def 메소드명 --> 인스턴스 메소드
    #     로직안에서 self를 쓸 수 있음
    #     이 self == 현재 자신 객체
    # end    
    
    def is_member?(user)
        # daum대신 self ==> 현재 자신 객체
        self.users.include?(user)
    end
   
end
