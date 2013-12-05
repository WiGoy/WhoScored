SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `WhoScoredDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `WhoScoredDB` ;

-- ----------------------------
-- Table `WhoScoredDB`.`matchinformation`
-- ----------------------------
CREATE TABLE IF NOT EXISTS `WhoScoredDB`.`matchinformation` (
  `match_id` INT NOT NULL,
  `start_time` time DEFAULT NULL,
  `league` VARCHAR(40) DEFAULT NULL,
  `home_team_id` INT(11) DEFAULT NULL,
  `home_team_name` VARCHAR(40) DEFAULT NULL,
  `home_team_rating` FLOAT DEFAULT NULL,
  `home_team_goals_for` FLOAT DEFAULT NULL,
  `home_team_points` FLOAT DEFAULT NULL,
  `away_team_id` INT(11) DEFAULT NULL,
  `away_team_name` VARCHAR(40) DEFAULT NULL,
  `away_team_rating` FLOAT DEFAULT NULL,
  `away_team_goals_for` FLOAT DEFAULT NULL,
  `away_team_points` FLOAT DEFAULT NULL,
  `man_of_the_match_player_id` INT(11) DEFAULT NULL,
  `man_of_the_match_player_name` VARCHAR(40) DEFAULT NULL,
  PRIMARY KEY (`match_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `WhoScoredDB`.`TeamStatistics`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WhoScoredDB`.`TeamStatistics` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `team_id` INT DEFAULT NULL,
  `team_name` VARCHAR(40) DEFAULT NULL,
  `league` VARCHAR(40) DEFAULT NULL,
  `match_id` INT DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `rating` FLOAT DEFAULT NULL,
  `accurate_back_zone_pass` FLOAT DEFAULT NULL,
  `accurate_chipped_pass` FLOAT DEFAULT NULL,
  `accurate_corners_intobox` FLOAT DEFAULT NULL,
  `accurate_cross` FLOAT DEFAULT NULL,
  `accurate_cross_nocorner` FLOAT DEFAULT NULL,
  `accurate_flick_on` FLOAT DEFAULT NULL,
  `accurate_freekick_cross` FLOAT DEFAULT NULL,
  `accurate_fwd_zone_pass` FLOAT DEFAULT NULL,
  `accurate_goal_kicks` FLOAT DEFAULT NULL,
  `accurate_keeper_sweeper` FLOAT DEFAULT NULL,
  `accurate_keeper_throws` FLOAT DEFAULT NULL,
  `accurate_launches` FLOAT DEFAULT NULL,
  `accurate_layoffs` FLOAT DEFAULT NULL,
  `accurate_long_balls` FLOAT DEFAULT NULL,
  `accurate_pass` FLOAT DEFAULT NULL,
  `accurate_through_ball` FLOAT DEFAULT NULL,
  `accurate_throws` FLOAT DEFAULT NULL,
  `aerial_lost` FLOAT DEFAULT NULL,
  `aerial_won` FLOAT DEFAULT NULL,
  `att_assist_openplay` FLOAT DEFAULT NULL,
  `att_assist_setplay` FLOAT DEFAULT NULL,
  `att_bx_centre` FLOAT DEFAULT NULL,
  `att_bx_left` FLOAT DEFAULT NULL,
  `att_bx_right` FLOAT DEFAULT NULL,
  `att_cmiss_high` FLOAT DEFAULT NULL,
  `att_cmiss_high_right` FLOAT DEFAULT NULL,
  `att_cmiss_left` FLOAT DEFAULT NULL,
  `att_cmiss_right` FLOAT DEFAULT NULL,
  `att_fastbreak` FLOAT DEFAULT NULL,
  `att_freekick_goal` FLOAT DEFAULT NULL,
  `att_freekick_miss` FLOAT DEFAULT NULL,
  `att_freekick_post` FLOAT DEFAULT NULL,
  `att_freekick_target` FLOAT DEFAULT NULL,
  `att_freekick_total` FLOAT DEFAULT NULL,
  `att_goal_high_left` FLOAT DEFAULT NULL,
  `att_goal_high_right` FLOAT DEFAULT NULL,
  `att_goal_low_centre` FLOAT DEFAULT NULL,
  `att_goal_low_left` FLOAT DEFAULT NULL,
  `att_goal_low_right` FLOAT DEFAULT NULL,
  `att_hd_goal` FLOAT DEFAULT NULL,
  `att_hd_miss` FLOAT DEFAULT NULL,
  `att_hd_post` FLOAT DEFAULT NULL,
  `att_hd_target` FLOAT DEFAULT NULL,
  `att_hd_total` FLOAT DEFAULT NULL,
  `att_ibox_blocked` FLOAT DEFAULT NULL,
  `att_ibox_goal` FLOAT DEFAULT NULL,
  `att_ibox_miss` FLOAT DEFAULT NULL,
  `att_ibox_post` FLOAT DEFAULT NULL,
  `att_ibox_target` FLOAT DEFAULT NULL,
  `att_lf_goal` FLOAT DEFAULT NULL,
  `att_lf_target` FLOAT DEFAULT NULL,
  `att_lf_total` FLOAT DEFAULT NULL,
  `att_lg_centre` FLOAT DEFAULT NULL,
  `att_miss_high` FLOAT DEFAULT NULL,
  `att_miss_high_left` FLOAT DEFAULT NULL,
  `att_miss_high_right` FLOAT DEFAULT NULL,
  `att_miss_left` FLOAT DEFAULT NULL,
  `att_miss_right` FLOAT DEFAULT NULL,
  `att_obox_blocked` FLOAT DEFAULT NULL,
  `att_obox_goal` FLOAT DEFAULT NULL,
  `att_obox_miss` FLOAT DEFAULT NULL,
  `att_obox_post` FLOAT DEFAULT NULL,
  `att_obox_target` FLOAT DEFAULT NULL,
  `att_obx_centre` FLOAT DEFAULT NULL,
  `att_obx_left` FLOAT DEFAULT NULL,
  `att_obxd_right` FLOAT DEFAULT NULL,
  `att_one_on_one` FLOAT DEFAULT NULL,
  `att_openplay` FLOAT DEFAULT NULL,
  `att_pen_goal` FLOAT DEFAULT NULL,
  `att_pen_target` FLOAT DEFAULT NULL,
  `att_post_high` FLOAT DEFAULT NULL,
  `att_post_right` FLOAT DEFAULT NULL,
  `att_rf_goal` FLOAT DEFAULT NULL,
  `att_rf_target` FLOAT DEFAULT NULL,
  `att_rf_total` FLOAT DEFAULT NULL,
  `att_setpiece` FLOAT DEFAULT NULL,
  `att_sv_high_centre` FLOAT DEFAULT NULL,
  `att_sv_high_left` FLOAT DEFAULT NULL,
  `att_sv_high_right` FLOAT DEFAULT NULL,
  `att_sv_low_centre` FLOAT DEFAULT NULL,
  `att_sv_low_left` FLOAT DEFAULT NULL,
  `att_sv_low_right` FLOAT DEFAULT NULL,
  `attempted_tackle_foul` FLOAT DEFAULT NULL,
  `attempts_conceded_ibox` FLOAT DEFAULT NULL,
  `attempts_conceded_obox` FLOAT DEFAULT NULL,
  `backward_pass` FLOAT DEFAULT NULL,
  `ball_recovery` FLOAT DEFAULT NULL,
  `big_chance_created` FLOAT DEFAULT NULL,
  `big_chance_missed` FLOAT DEFAULT NULL,
  `big_chance_scored` FLOAT DEFAULT NULL,
  `blocked_cross` FLOAT DEFAULT NULL,
  `blocked_pass` FLOAT DEFAULT NULL,
  `blocked_scoring_att` FLOAT DEFAULT NULL,
  `challenge_lost` FLOAT DEFAULT NULL,
  `clean_sheet` FLOAT DEFAULT NULL,
  `clearance_off_line` FLOAT DEFAULT NULL,
  `contentious_decision` FLOAT DEFAULT NULL,
  `corner_taken` FLOAT DEFAULT NULL,
  `cross_inaccurate` FLOAT DEFAULT NULL,
  `crosses_18yard` FLOAT DEFAULT NULL,
  `crosses_18yardplus` FLOAT DEFAULT NULL,
  `defender_goals` FLOAT DEFAULT NULL,
  `dispossessed` FLOAT DEFAULT NULL,
  `diving_save` FLOAT DEFAULT NULL,
  `dribble_lost` FLOAT DEFAULT NULL,
  `duel_ground_lost` FLOAT DEFAULT NULL,
  `duel_ground_won` FLOAT DEFAULT NULL,
  `duel_lost` FLOAT DEFAULT NULL,
  `duel_won` FLOAT DEFAULT NULL,
  `effective_blocked_cross` FLOAT DEFAULT NULL,
  `effective_clearance` FLOAT DEFAULT NULL,
  `effective_head_clearance` FLOAT DEFAULT NULL,
  `error_lead_to_goal` FLOAT DEFAULT NULL,
  `error_lead_to_shot` FLOAT DEFAULT NULL,
  `failed_to_block` FLOAT DEFAULT NULL,
  `fifty_fifty` FLOAT DEFAULT NULL,
  `final_third_entries` FLOAT DEFAULT NULL,
  `first_half_goals` FLOAT DEFAULT NULL,
  `fk_foul_lost` FLOAT DEFAULT NULL,
  `fk_foul_won` FLOAT DEFAULT NULL,
  `formation_used` FLOAT DEFAULT NULL,
  `forward_goals` FLOAT DEFAULT NULL,
  `fouled_final_third` FLOAT DEFAULT NULL,
  `freekick_cross` FLOAT DEFAULT NULL,
  `fwd_pass` FLOAT DEFAULT NULL,
  `goal_assist` FLOAT DEFAULT NULL,
  `goal_assist_intentional` FLOAT DEFAULT NULL,
  `goal_assist_openplay` FLOAT DEFAULT NULL,
  `goal_assist_setplay` FLOAT DEFAULT NULL,
  `goal_fastbreak` FLOAT DEFAULT NULL,
  `goal_kicks` FLOAT DEFAULT NULL,
  `goals` FLOAT DEFAULT NULL,
  `goals_conceded` FLOAT DEFAULT NULL,
  `goals_conceded_ibox` FLOAT DEFAULT NULL,
  `goals_conceded_obox` FLOAT DEFAULT NULL,
  `goals_openplay` FLOAT DEFAULT NULL,
  `good_high_claim` FLOAT DEFAULT NULL,
  `hand_ball` FLOAT DEFAULT NULL,
  `head_clearance` FLOAT DEFAULT NULL,
  `hit_woodwork` FLOAT DEFAULT NULL,
  `interception` FLOAT DEFAULT NULL,
  `interception_won` FLOAT DEFAULT NULL,
  `interceptions_in_box` FLOAT DEFAULT NULL,
  `keeper_throws` FLOAT DEFAULT NULL,
  `last_man_tackle` FLOAT DEFAULT NULL,
  `leftside_pass` FLOAT DEFAULT NULL,
  `long_pass_own_to_opp` FLOAT DEFAULT NULL,
  `long_pass_own_to_opp_success` FLOAT DEFAULT NULL,
  `lost_corners` FLOAT DEFAULT NULL,
  `midfielder_goals` FLOAT DEFAULT NULL,
  `offtarget_att_assist` FLOAT DEFAULT NULL,
  `ontarget_att_assist` FLOAT DEFAULT NULL,
  `ontarget_scoring_att` FLOAT DEFAULT NULL,
  `open_play_pass` FLOAT DEFAULT NULL,
  `outfielder_block` FLOAT DEFAULT NULL,
  `overrun` FLOAT DEFAULT NULL,
  `passes_left` FLOAT DEFAULT NULL,
  `passes_right` FLOAT DEFAULT NULL,
  `pen_area_entries` FLOAT DEFAULT NULL,
  `pen_goals_conceded` FLOAT DEFAULT NULL,
  `penalty_conceded` FLOAT DEFAULT NULL,
  `penalty_faced` FLOAT DEFAULT NULL,
  `penalty_missed` FLOAT DEFAULT NULL,
  `penalty_save` FLOAT DEFAULT NULL,
  `penalty_won` FLOAT DEFAULT NULL,
  `poss_lost_all` FLOAT DEFAULT NULL,
  `poss_lost_ctrl` FLOAT DEFAULT NULL,
  `poss_won_att_3rd` FLOAT DEFAULT NULL,
  `poss_won_def_3rd` FLOAT DEFAULT NULL,
  `poss_won_mid_3rd` FLOAT DEFAULT NULL,
  `possession_percentage` FLOAT DEFAULT NULL,
  `post_scoring_att` FLOAT DEFAULT NULL,
  `punches` FLOAT DEFAULT NULL,
  `put_through` FLOAT DEFAULT NULL,
  `rightside_pass` FLOAT DEFAULT NULL,
  `saved_ibox` FLOAT DEFAULT NULL,
  `saved_obox` FLOAT DEFAULT NULL,
  `saves` FLOAT DEFAULT NULL,
  `second_yellow` FLOAT DEFAULT NULL,
  `shield_ball_oop` FLOAT DEFAULT NULL,
  `shot_fastbreak` FLOAT DEFAULT NULL,
  `shot_off_target` FLOAT DEFAULT NULL,
  `six_yard_block` FLOAT DEFAULT NULL,
  `subs_made` FLOAT DEFAULT NULL,
  `successful_fifty_fifty` FLOAT DEFAULT NULL,
  `successful_final_third_passes` FLOAT DEFAULT NULL,
  `successful_open_play_pass` FLOAT DEFAULT NULL,
  `successful_put_through` FLOAT DEFAULT NULL,
  `tackle_lost` FLOAT DEFAULT NULL,
  `total_att_assist` FLOAT DEFAULT NULL,
  `total_back_zone_pass` FLOAT DEFAULT NULL,
  `total_chipped_pass` FLOAT DEFAULT NULL,
  `total_clearance` FLOAT DEFAULT NULL,
  `total_contest` FLOAT DEFAULT NULL,
  `total_corners_intobox` FLOAT DEFAULT NULL,
  `total_cross` FLOAT DEFAULT NULL,
  `total_cross_nocorner` FLOAT DEFAULT NULL,
  `total_fastbreak` FLOAT DEFAULT NULL,
  `total_final_third_passes` FLOAT DEFAULT NULL,
  `total_flick_on` FLOAT DEFAULT NULL,
  `total_fwd_zone_pass` FLOAT DEFAULT NULL,
  `total_high_claim` FLOAT DEFAULT NULL,
  `total_keeper_sweeper` FLOAT DEFAULT NULL,
  `total_launches` FLOAT DEFAULT NULL,
  `total_layoffs` FLOAT DEFAULT NULL,
  `total_long_balls` FLOAT DEFAULT NULL,
  `total_offside` FLOAT DEFAULT NULL,
  `total_pass` FLOAT DEFAULT NULL,
  `total_pull_back` FLOAT DEFAULT NULL,
  `total_red_card` FLOAT DEFAULT NULL,
  `total_scoring_att` FLOAT DEFAULT NULL,
  `total_tackle` FLOAT DEFAULT NULL,
  `total_through_ball` FLOAT DEFAULT NULL,
  `total_throws` FLOAT DEFAULT NULL,
  `total_yel_card` FLOAT DEFAULT NULL,
  `touches` FLOAT DEFAULT NULL,
  `unsuccessful_touch` FLOAT DEFAULT NULL,
  `won_contest` FLOAT DEFAULT NULL,
  `won_corners` FLOAT DEFAULT NULL,
  `won_tackle` FLOAT DEFAULT NULL,
  PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- -----------------------------------------------------
-- Table `WhoScoredDB`.`PlayerStatistics`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `WhoScoredDB`.`PlayerStatistics` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `player_id` INT DEFAULT NULL,
  `player_name` VARCHAR(40) DEFAULT NULL,
  `team_id` INT DEFAULT NULL,
  `team_name` VARCHAR(40) DEFAULT NULL,
  `league` VARCHAR(40) DEFAULT NULL,
  `match_id` INT DEFAULT NULL,
  `home` tinyint(1) DEFAULT NULL,
  `accurate_back_zone_pass` FLOAT NULL,
  `accurate_chipped_pass` FLOAT NULL,
  `accurate_corners_intobox` FLOAT NULL,
  `accurate_cross` FLOAT NULL,
  `accurate_cross_nocorner` FLOAT NULL,
  `accurate_flick_on` FLOAT NULL,
  `accurate_freekick_cross` FLOAT NULL,
  `accurate_fwd_zone_pass` FLOAT NULL,
  `accurate_goal_kicks` FLOAT NULL,
  `accurate_keeper_sweeper` FLOAT NULL,
  `accurate_keeper_throws` FLOAT NULL,
  `accurate_launches` FLOAT NULL,
  `accurate_layoffs` FLOAT NULL,
  `accurate_long_balls` FLOAT NULL,
  `accurate_pass` FLOAT NULL,
  `accurate_through_ball` FLOAT NULL,
  `accurate_throws` FLOAT NULL,
  `aerial_lost` FLOAT NULL,
  `aerial_won` FLOAT NULL,
  `assist_penalty_won` FLOAT NULL,
  `att_assist_openplay` FLOAT NULL,
  `att_assist_setplay` FLOAT NULL,
  `att_bx_centre` FLOAT NULL,
  `att_bx_left` FLOAT NULL,
  `att_bx_right` FLOAT NULL,
  `att_cmiss_high` FLOAT NULL,
  `att_cmiss_high_right` FLOAT NULL,
  `att_cmiss_left` FLOAT NULL,
  `att_cmiss_right` FLOAT NULL,
  `att_fastbreak` FLOAT NULL,
  `att_freekick_goal` FLOAT NULL,
  `att_freekick_miss` FLOAT NULL,
  `att_freekick_post` FLOAT NULL,
  `att_freekick_target` FLOAT NULL,
  `att_freekick_total` FLOAT NULL,
  `att_goal_high_left` FLOAT NULL,
  `att_goal_high_right` FLOAT NULL,
  `att_goal_low_centre` FLOAT NULL,
  `att_goal_low_left` FLOAT NULL,
  `att_goal_low_right` FLOAT NULL,
  `att_hd_goal` FLOAT NULL,
  `att_hd_miss` FLOAT NULL,
  `att_hd_post` FLOAT NULL,
  `att_hd_target` FLOAT NULL,
  `att_hd_total` FLOAT NULL,
  `att_ibox_blocked` FLOAT NULL,
  `att_ibox_goal` FLOAT NULL,
  `att_ibox_miss` FLOAT NULL,
  `att_ibox_post` FLOAT NULL,
  `att_ibox_target` FLOAT NULL,
  `att_lf_goal` FLOAT NULL,
  `att_lf_target` FLOAT NULL,
  `att_lf_total` FLOAT NULL,
  `att_lg_centre` FLOAT NULL,
  `att_miss_high` FLOAT NULL,
  `att_miss_high_left` FLOAT NULL,
  `att_miss_high_right` FLOAT NULL,
  `att_miss_left` FLOAT NULL,
  `att_miss_right` FLOAT NULL,
  `att_obox_blocked` FLOAT NULL,
  `att_obox_goal` FLOAT NULL,
  `att_obox_miss` FLOAT NULL,
  `att_obox_post` FLOAT NULL,
  `att_obox_target` FLOAT NULL,
  `att_obx_centre` FLOAT NULL,
  `att_obx_left` FLOAT NULL,
  `att_obxd_right` FLOAT NULL,
  `att_one_on_one` FLOAT NULL,
  `att_openplay` FLOAT NULL,
  `att_pen_goal` FLOAT NULL,
  `att_pen_target` FLOAT NULL,
  `att_post_high` FLOAT NULL,
  `att_post_right` FLOAT NULL,
  `att_rf_goal` FLOAT NULL,
  `att_rf_target` FLOAT NULL,
  `att_rf_total` FLOAT NULL,
  `att_setpiece` FLOAT NULL,
  `att_sv_high_centre` FLOAT NULL,
  `att_sv_high_left` FLOAT NULL,
  `att_sv_high_right` FLOAT NULL,
  `att_sv_low_centre` FLOAT NULL,
  `att_sv_low_left` FLOAT NULL,
  `att_sv_low_right` FLOAT NULL,
  `attempted_tackle_foul` FLOAT NULL,
  `attempts_conceded_ibox` FLOAT NULL,
  `attempts_conceded_obox` FLOAT NULL,
  `backward_pass` FLOAT NULL,
  `ball_recovery` FLOAT NULL,
  `big_chance_created` FLOAT NULL,
  `big_chance_missed` FLOAT NULL,
  `big_chance_scored` FLOAT NULL,
  `blocked_cross` FLOAT NULL,
  `blocked_pass` FLOAT NULL,
  `blocked_scoring_att` FLOAT NULL,
  `challenge_lost` FLOAT NULL,
  `clean_sheet_amc` FLOAT NULL,
  `clean_sheet_amr` FLOAT NULL,
  `clean_sheet_dc` FLOAT NULL,
  `clean_sheet_dl` FLOAT NULL,
  `clean_sheet_dmc` FLOAT NULL,
  `clean_sheet_dml` FLOAT NULL,
  `clean_sheet_dmr` FLOAT NULL,
  `clean_sheet_dr` FLOAT NULL,
  `clean_sheet_fw` FLOAT NULL,
  `clean_sheet_gk` FLOAT NULL,
  `clearance_off_line` FLOAT NULL,
  `corner_taken` FLOAT NULL,
  `cross_inaccurate` FLOAT NULL,
  `crosses_18yard` FLOAT NULL,
  `crosses_18yardplus` FLOAT NULL,
  `dangerous_play` FLOAT NULL,
  `dispossessed` FLOAT NULL,
  `dive_catch` FLOAT NULL,
  `dive_save` FLOAT NULL,
  `diving_save` FLOAT NULL,
  `dribble_lost` FLOAT NULL,
  `duel_ground_lost` FLOAT NULL,
  `duel_ground_won` FLOAT NULL,
  `duel_lost` FLOAT NULL,
  `duel_won` FLOAT NULL,
  `effective_blocked_cross` FLOAT NULL,
  `effective_clearance` FLOAT NULL,
  `effective_head_clearance` FLOAT NULL,
  `error_lead_to_goal` FLOAT NULL,
  `error_lead_to_shot` FLOAT NULL,
  `failed_to_block` FLOAT NULL,
  `fifty_fifty` FLOAT NULL,
  `final_third_entries` FLOAT NULL,
  `formation_place` FLOAT NULL,
  `fouled_final_third` FLOAT NULL,
  `fouls` FLOAT NULL,
  `freekick_cross` FLOAT NULL,
  `fwd_pass` FLOAT NULL,
  `game_started` FLOAT NULL,
  `gk_smother` FLOAT NULL,
  `goal_assist` FLOAT NULL,
  `goal_assist_intentional` FLOAT NULL,
  `goal_assist_openplay` FLOAT NULL,
  `goal_assist_setplay` FLOAT NULL,
  `goal_fastbreak` FLOAT NULL,
  `goal_kicks` FLOAT NULL,
  `goal_normal` FLOAT NULL,
  `goal_scored_by_team_amc` FLOAT NULL,
  `goal_scored_by_team_aml` FLOAT NULL,
  `goal_scored_by_team_amr` FLOAT NULL,
  `goal_scored_by_team_dc` FLOAT NULL,
  `goal_scored_by_team_dl` FLOAT NULL,
  `goal_scored_by_team_dmc` FLOAT NULL,
  `goal_scored_by_team_dml` FLOAT NULL,
  `goal_scored_by_team_dmr` FLOAT NULL,
  `goal_scored_by_team_dr` FLOAT NULL,
  `goal_scored_by_team_fw` FLOAT NULL,
  `goal_scored_by_team_fwl` FLOAT NULL,
  `goal_scored_by_team_fwr` FLOAT NULL,
  `goal_scored_by_team_gk` FLOAT NULL,
  `goal_scored_by_team_mc` FLOAT NULL,
  `goal_scored_by_team_ml` FLOAT NULL,
  `goal_scored_by_team_mr` FLOAT NULL,
  `goal_scored_by_team_sub` FLOAT NULL,
  `goals` FLOAT NULL,
  `goals_conceded_amc` FLOAT NULL,
  `goals_conceded_aml` FLOAT NULL,
  `goals_conceded_amr` FLOAT NULL,
  `goals_conceded_dc` FLOAT NULL,
  `goals_conceded_dl` FLOAT NULL,
  `goals_conceded_dmc` FLOAT NULL,
  `goals_conceded_dr` FLOAT NULL,
  `goals_conceded_fw` FLOAT NULL,
  `goals_conceded_fwl` FLOAT NULL,
  `goals_conceded_fwr` FLOAT NULL,
  `goals_conceded_gk` FLOAT NULL,
  `goals_conceded_ibox` FLOAT NULL,
  `goals_conceded_mc` FLOAT NULL,
  `goals_conceded_ml` FLOAT NULL,
  `goals_conceded_mr` FLOAT NULL,
  `goals_conceded_obox_amc` FLOAT NULL,
  `goals_conceded_obox_aml` FLOAT NULL,
  `goals_conceded_obox_amr` FLOAT NULL,
  `goals_conceded_obox_dc` FLOAT NULL,
  `goals_conceded_obox_dl` FLOAT NULL,
  `goals_conceded_obox_dmc` FLOAT NULL,
  `goals_conceded_obox_dr` FLOAT NULL,
  `goals_conceded_obox_fw` FLOAT NULL,
  `goals_conceded_obox_gk` FLOAT NULL,
  `goals_conceded_obox_mc` FLOAT NULL,
  `goals_conceded_obox_ml` FLOAT NULL,
  `goals_conceded_obox_mr` FLOAT NULL,
  `goals_conceded_obox_sub` FLOAT NULL,
  `goals_conceded_sub` FLOAT NULL,
  `goals_openplay` FLOAT NULL,
  `good_high_claim` FLOAT NULL,
  `hand_ball` FLOAT NULL,
  `head_clearance` FLOAT NULL,
  `head_pass` FLOAT NULL,
  `hit_woodwork` FLOAT NULL,
  `interception` FLOAT NULL,
  `interception_won` FLOAT NULL,
  `interceptions_in_box` FLOAT NULL,
  `keeper_claim_high_lost` FLOAT NULL,
  `keeper_claim_lost` FLOAT NULL,
  `keeper_pick_up` FLOAT NULL,
  `keeper_sweeper_lost` FLOAT NULL,
  `keeper_throws` FLOAT NULL,
  `last_man_tackle` FLOAT NULL,
  `leftside_pass` FLOAT NULL,
  `long_pass_own_to_opp` FLOAT NULL,
  `long_pass_own_to_opp_success` FLOAT NULL,
  `lost_corners` FLOAT NULL,
  `man_of_the_match` FLOAT NULL,
  `mins_played` FLOAT NULL,
  `offside_provoked` FLOAT NULL,
  `offtarget_att_assist` FLOAT NULL,
  `ontarget_att_assist` FLOAT NULL,
  `ontarget_scoring_att` FLOAT NULL,
  `open_play_pass` FLOAT NULL,
  `outfielder_block` FLOAT NULL,
  `overrun` FLOAT NULL,
  `pass_backzone_inaccurate` FLOAT NULL,
  `pass_forwardzone_inaccurate` FLOAT NULL,
  `pass_inaccurate` FLOAT NULL,
  `pass_longball_inaccurate` FLOAT NULL,
  `pass_throughball_inacurate` FLOAT NULL,
  `passes_left` FLOAT NULL,
  `passes_right` FLOAT NULL,
  `pen_area_entries` FLOAT NULL,
  `pen_goals_conceded` FLOAT NULL,
  `penalty_conceded` FLOAT NULL,
  `penalty_faced` FLOAT NULL,
  `penalty_missed` FLOAT NULL,
  `penalty_save` FLOAT NULL,
  `penalty_shootout_conceded_gk` FLOAT NULL,
  `penalty_shootout_missed_off_target` FLOAT NULL,
  `penalty_shootout_saved` FLOAT NULL,
  `penalty_shootout_saved_gk` FLOAT NULL,
  `penalty_shootout_scored` FLOAT NULL,
  `penalty_won` FLOAT NULL,
  `position` VARCHAR(10) NULL,
  `poss_lost_all` FLOAT NULL,
  `poss_lost_ctrl` FLOAT NULL,
  `poss_won_att_3rd` FLOAT NULL,
  `poss_won_def_3rd` FLOAT NULL,
  `poss_won_mid_3rd` FLOAT NULL,
  `post_scoring_att` FLOAT NULL,
  `punches` FLOAT NULL,
  `put_through` FLOAT NULL,
  `rating` FLOAT NULL,
  `rating_defensive` FLOAT NULL,
  `rating_defensive_points` FLOAT NULL,
  `rating_offensive` FLOAT NULL,
  `rating_offensive_points` FLOAT NULL,
  `rating_points` FLOAT NULL,
  `red_card` FLOAT NULL,
  `rightside_pass` FLOAT NULL,
  `saved_ibox` FLOAT NULL,
  `saved_obox` FLOAT NULL,
  `saves` FLOAT NULL,
  `second_goal_assist` FLOAT NULL,
  `second_yellow` FLOAT NULL,
  `shield_ball_oop` FLOAT NULL,
  `shot_fastbreak` FLOAT NULL,
  `shot_off_target` FLOAT NULL,
  `six_yard_block` FLOAT NULL,
  `stand_catch` FLOAT NULL,
  `successful_fifty_fifty` FLOAT NULL,
  `successful_final_third_passes` FLOAT NULL,
  `successful_open_play_pass` FLOAT NULL,
  `successful_put_through` FLOAT NULL,
  `tackle_lost` FLOAT NULL,
  `total_att_assist` FLOAT NULL,
  `total_back_zone_pass` FLOAT NULL,
  `total_chipped_pass` FLOAT NULL,
  `total_clearance` FLOAT NULL,
  `total_contest` FLOAT NULL,
  `total_corners_intobox` FLOAT NULL,
  `total_cross` FLOAT NULL,
  `total_cross_nocorner` FLOAT NULL,
  `total_fastbreak` FLOAT NULL,
  `total_final_third_passes` FLOAT NULL,
  `total_flick_on` FLOAT NULL,
  `total_fwd_zone_pass` FLOAT NULL,
  `total_high_claim` FLOAT NULL,
  `total_keeper_sweeper` FLOAT NULL,
  `total_launches` FLOAT NULL,
  `total_layoffs` FLOAT NULL,
  `total_long_balls` FLOAT NULL,
  `total_offside` FLOAT NULL,
  `total_pass` FLOAT NULL,
  `total_pull_back` FLOAT NULL,
  `total_scoring_att` FLOAT NULL,
  `total_sub_off` FLOAT NULL,
  `total_sub_on` FLOAT NULL,
  `total_tackle` FLOAT NULL,
  `total_through_ball` FLOAT NULL,
  `total_throws` FLOAT NULL,
  `touches` FLOAT NULL,
  `turnover` FLOAT NULL,
  `unsuccessful_touch` FLOAT NULL,
  `was_fouled` FLOAT NULL,
  `won_contest` FLOAT NULL,
  `won_corners` FLOAT NULL,
  `won_tackle` FLOAT NULL,
  `yellow_card` FLOAT NULL,
  PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;