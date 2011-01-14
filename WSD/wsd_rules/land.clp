
(defrule land0
(declare (salience 5000))
(id-root ?id land)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id landed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAgIravAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  land.clp  	land0   "  ?id "  jAgIravAlA )" crlf))
)

;"landed","Adj","1.jAgIravAlA"
;
;
(defrule land1
(declare (salience 4900))
(id-root ?id land)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " land.clp	land1  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

;Who knows where they may land up in the future!
;kOna jAne BaviRya meM ve kahAz hoMge !
(defrule land2
(declare (salience 4800))
(id-root ?id land)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  land.clp 	land2   "  ?id "  uwara )" crlf))
)

;default_sense && category=verb	uwaranA/avawaraNa kara	0
;"land","V","1.uwaranA/avawaraNa karanA"
;Troops have been landed at several points.
;The pilot managed to land safely.
;--"2.kUxa ke yA gira ke jamIna para pahuzcanA"
;Try to catch that leaf before it lands.
;--"3.pareSAnI pExA karanA"
;The complain landed on the desk of the manager.
;--"4.saPalawA prApwa karanA"
;Don't worry you will land a good job.
;--"5.GUzsA mAranA"
;Jones landed several good punches in the early round.
;
;
(defrule land3
(declare (salience 4700))
(id-root ?id land)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id landing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uwaranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  land.clp  	land3   "  ?id "  uwaranA )" crlf))
)

;given_word=landing && word_category=noun	$avawaraNa)

;"landing","N","1.avawaraNa"
;The space travellers made successful landing on the moon.
;--"2.GAta{avawaraNasWAna}"
;There was no landing place for the boat.
;--"3.lEMdiMga{sIDZiyoM ke Kawma hone kI jagaha}"
;I left my case on the first floor landing.
;
;PP_null_up && transitivity=INTR && category=verb	pahuzca	0
;Who knows where they may land up in the future!
;kOna jAne BaviRya meM ve kahAz hoMge !
(defrule land4
(declare (salience 4600))
(id-root ?id land)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  land.clp 	land4   "  ?id "  uwara )" crlf))
)

;default_sense && category=verb	uwaranA/avawaraNa kara	0
;"land","V","1.uwaranA/avawaraNa karanA"
;Troops have been landed at several points.
;The pilot managed to land safely.
;--"2.kUxa ke yA gira ke jamIna para pahuzcanA"
;Try to catch that leaf before it lands.
;--"3.pareSAnI pExA karanA"
;The complain landed on the desk of the manager.
;--"4.saPalawA prApwa karanA"
;Don't worry you will land a good job.
;--"5.GUzsA mAranA"
;Jones landed several good punches in the early round.
;
;
