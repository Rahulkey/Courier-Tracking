using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Dao
{
    interface IMemberDao
    {
        Member GetMember(int userId);       
        int AddMemberStaff(Member member);
        int AddMemberUser(Member member);
        void ModifyMemberStaff(Member member);
        List<Member> ShowSatff();
        void DeleteMemberStaff(int userId);
        List<Member> GetMemberStaff(int userId);
        void  UpdateMemberStaff(int userId,string password);
    }
}
