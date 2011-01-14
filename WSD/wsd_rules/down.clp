
(defrule down0
(declare (salience 5000))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down0   "  ?id "  nIce )" crlf))
)

;"down","Adv","1.nIce"
;He lay face down
;The thief was hidden in the down staircase
;The shades were down
;--"2.uxAsa/hawowsAha"
;She has been down since her last exam results.
;--"3.KarAba"
;We can't work because the computer is down
;--"4.girA_huA"
;The tree is down
;
(defrule down1
(declare (salience 4900))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rovAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down1   "  ?id "  rovAz )" crlf))
)

;"down","N","1.rovAz/mulAyama_bAla"
;You have 4 downs to gain 1.yards
;
(defrule down2
(declare (salience 4800))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down2   "  ?id "  ke_nIce )" crlf))
)

;"down","Prep","1.ke_nIce/ke_wale"
;You should run down a hill. 
;He ran off down the street.
;
(defrule down3
(declare (salience 4700))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down3   "  ?id "  nIce_girA )" crlf))
)

;"down","VT","1.nIce_girAnA"
;He downed three martinis before dinner
;Some people can down a pound of meat in the course of one meal
;The policeman downed the heavily armed suspect
;
;LEVEL 
;Headword : down
;
;Examples --
;"down","Adv","1.uxAsa/hawowsAha"
;She has been down since her last exam results.
;vaha apane piCalI parIkRA ke pariNAmoM ke bAxa se uxAsa hE.<--mana uxAsa honA <--sAmAnya avasWA se nIce kI ora honA
;--"nIce"
;He lay face down
;vaha sara nIcA kara ke letA WA
;The thief was hidden in the down staircase
;cora nIce kI sIDZiyoM meM CipA WA.
;The shades were down
;parxe gire We
;--"3.KarAba"
;We can't work because the computer is down
;hama kAma nahIM kara sakawe kyoM ki kampyUtara KarAba hEM. <---kAma na karanA <--nIce honA
;--"girA_huA"
;The tree is down
;pedZa gira gayA hE. <---nIce honA
;--"nakaxa"
;They made the down payment
;unhoMne nakaxa BugawAna kiyA.
;
;"down","N","1.rovAz/mulAyama_bAla"
;You have 4 downs to gain 11 yards
;
;"down","Prep","1.ke_nIce/ke_wale"
;You should run down the hill.
;wumheM pahAdZa se nIce xOdZanA cAhiye.
;He ran off down the street.
;vaha sadZaka para nIce kI ora xOdZA
;
;"down","VT","1.nIce_uwAranA"
;He downed three martinis before dinner
;usane rAWa ke KAne ke pahale wIna mArtIni {gale ke} nIce uwArIM
;Some people can down a pound of meat in the course of one meal
;kuCa loga eka bAre ke Bojana meM eka pAuMda mIta {gale ke} nIce uwAra sakawe hEM.
;
;
;
;sUwra : nIce`_[uwAranA]/rovAz
