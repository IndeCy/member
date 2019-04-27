package fans.club.member.management.member.controller;

import fans.club.member.management.member.entity.ClubAct;
import fans.club.member.management.member.service.ClubActService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("act")
public class ActController {

    @Resource
    private ClubActService clubActService;

    @RequestMapping("/addClubAct")
    @ResponseBody
    public String addClubAct(ClubAct clubAct){
        return clubActService.addClubAct(clubAct);
    }

    @RequestMapping("/editClubAct")
    @ResponseBody
    public String editClubAct(ClubAct clubAct){
        return clubActService.edit(clubAct);
    }

    @RequestMapping("/selectClubActList")
    @ResponseBody
    public List<ClubAct> getClubList(){
        return clubActService.getClubActList();
    }

    @RequestMapping("/deleteClubAct")
    @ResponseBody
    public String deleteClubAct(int id){
        return clubActService.delete(id);
    }

    @RequestMapping("/selectClubAct")
    @ResponseBody
    public ClubAct getClubAct(int id){
        return clubActService.getClubAct(id);
    }
}
