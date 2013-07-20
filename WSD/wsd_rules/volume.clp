;This file is created by Aditya and Hardik,IIT(BHU)


;This article originally appeared in volume 5.
(defrule volume0
(declare (salience 4700))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse = (+ ?id 1) number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id granWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume0   "  ?id "  granWa )" crlf))
)

;The essay in this volume is nice.
;The quotes of this volume are nice.
(defrule volume1
(declare (salience 4900))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 essay|quotes|article|vocabulary)
(or(viSeRya-of_saMbanXI ?id1 ?id)(viSeRya-in_saMbanXI ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id granWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume1   "  ?id "  granWa )" crlf))
)

;He was playing music at low volume.
;volume is too loud.
(defrule volume2
(declare (salience 5000))
(id-root ?id volume)
(id-word ?id1 high|low|top|loud)
(or(viSeRya-viSeRaNa ?id ?id1)(subject-subject_samAnAXikaraNa ?id1 ?id))
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvrawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume2   "  ?id "  wIvrawA )" crlf))
)

;Radhika ordered me to increase the volume of the speaker.
;I increased the volume of speaker to maximum.
;The volume of speaker must be increased.
(defrule volume3
(declare (salience 5100))
(id-root ?id volume)
(id-word ?id1 tv|sterio|radio|television|laptop|speaker|computer)
(viSeRya-of_saMbanXI ?id ?id1)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIvrawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume3   "  ?id "  wIvrawA )" crlf))
)

;What is the volume of cylinder?
(defrule volume4
(declare (salience 4000))
(id-root ?id volume)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 container|cylinder|cone|sphere|cube|hemisphere)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  volume.clp       volume4   "  ?id "  Ayawana )" crlf))
)
