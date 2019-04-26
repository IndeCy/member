package fans.club.member.management.member.controller;

import fans.club.member.management.member.entity.Club;
import fans.club.member.management.member.service.ClubService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("club")
public class ClubController {

    @Resource
    private ClubService clubService;

    @RequestMapping("/addClub")
    @ResponseBody
    public String addClub(Club club){
        return clubService.addClub(club);
    }

    @RequestMapping("/editClub")
    @ResponseBody
    public String editClub(Club club){
        return clubService.edit(club);
    }

    @RequestMapping("/selectClubList")
    @ResponseBody
    public List<Club> getClubList(){
        return clubService.getClubList();
    }

    @RequestMapping("/deleteClub")
    @ResponseBody
    public String deleteClub(int id){
        return clubService.delete(id);
    }

    @RequestMapping("/selectClub")
    @ResponseBody
    public Club getClub(int id){
        return clubService.getClub(id);
    }
}
