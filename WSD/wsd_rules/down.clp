
(defrule down0
(declare (salience 4000))
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
;He downed three martinis before dinner
;usane rAWa ke KAne ke pahale wIna mArtIni {gale ke} nIce uwArIM
;Some people can down a pound of meat in the course of one meal
;kuCa loga eka bAre ke Bojana meM eka pAuMda mIta {gale ke} nIce uwAra sakawe hEM.
(defrule down3
(declare (salience 4000))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_uwAra))  ;$$$ meaning changed from 'nIce_girA' to 'nIce_uwAra' by Pramila(BU) on 04-12-2013
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down3   "  ?id "  nIce_uwAra )" crlf))
)


;@@@ Added by Pramila(BU) on 04-12-2013
;To reduce down inflation   
;मुद्रा स्फीति कम करना
(defrule down4
(declare (salience 4800))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id1 ?id)
(id-root ?id1 reduce)

=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " down.clp	down4  "  ?id "  " ?id1 "  kama_kara  )" crlf))
)


;@@@ Added by Pramila(BU) on 04-12-2013
;The thief was hidden in the down staircase.         [old clp]
;cora nIce kI sIDZiyoM meM CipA WA.
(defrule down5
(declare (salience 5000))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id2 ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down5   "  ?id "  nIce_kA )" crlf))
)

;@@@ Added by Pramila(BU) on 04-12-2013
;She has been down since her last exam results.            [old clp]
;vaha apane piCalI parIkRA ke pariNAmoM ke bAxa se uxAsa hE.
(defrule down6
(declare (salience 5000))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(kriyA-aXikaraNavAcI  ?id1 ?id)
(kriyA-since_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down6   "  ?id "  uxAsa )" crlf))
)

;@@@ Added by Pramila(BU) on 04-12-2013
;We can't work because the computer is down.                    [old clp]
;hama kAma nahIM kara sakawe kyoM ki kampyUtara KarAba hEM.
(defrule down7
(declare (salience 5000))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id1 ?id)
(id-root ?id1 work)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down7   "  ?id "  KarAba )" crlf))
)

;@@@ Added by Pramila(BU) on 04-12-2013
;You should run down the hill.           [old clp]
;wumheM pahAdZa se nIce kI ora xOdZanA cAhiye.
;He ran off down the street.      ;sentence of this file
;vaha sadZaka para nIce kI ora xOdZA
(defrule down8
(declare (salience 4500))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-aXikaraNavAcI  ?id1 ?id)(kriyA-upasarga  ?id1 ?id))
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down8   "  ?id "  nIce_kI_ora )" crlf))
)

;@@@ Added by Pramila(BU) on 04-12-2013
;The policeman downed the heavily armed suspect        [old clp]
(defrule down9
(declare (salience 4500))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 suspect|thief)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_girA))        
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down9   "  ?id "  nIce_girA )" crlf))
)

;@@@ Added by Pramila(BU) on 09-12-2013
;The policeman downed the heavily armed suspect        [old clp]
(defrule down10
(declare (salience 4000))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id particle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))        
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down10   "  ?id "  kama )" crlf))
)

;@@@ Added by Pramila(BU) on 03-01-2014
;The robber jumped down and showed his bleeding nose to the chief.         ;gyannidhi
;डाकू नीचे कूदा और सरदार को उसकी खून बहती हुई नाक दिखायी।
;She looked down and saw to her dismay that she wasn't riding a camel at all.  ;gyannidhi  
(defrule down11
(declare (salience 4900))
(id-root ?id down)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id1 ?id)
(id-root ?id1 jump|look)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce))        
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  down.clp 	down11   "  ?id "  nIce )" crlf))
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
