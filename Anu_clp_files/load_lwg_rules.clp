 (bind ?*path1* (str-cat ?*path1* "/Anu_clp_files"))

 (defrule lwg_rule
 ?f0<-(run_parser_lwg_rules)
 (not (No complete linkages found))
 =>
 (retract ?f0)
 (bind ?path1 (str-cat ?*path1* "/run_parser_lwg_rules.bat"))
 (batch ?path1)
 )

 (defrule sd_lwg_rule
 ?f0<-(run_sd_parser_lwg_rules)
 =>
 (retract ?f0)
 (bind ?path1 (str-cat ?*path1* "/run_sd_lwg_rules.bat"))
 (batch ?path1)
 )


 (defrule lwg_rule2
 ?f0<-(run_old_lwg_rules)
 =>
 (retract ?f0)
 (bind ?path3 (str-cat ?*path1* "/run_lwg_rules.bat"))
 (batch ?path3)
 )
