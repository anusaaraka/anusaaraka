
(defrule lick0
(declare (salience 5000))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id puwAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick0   "  ?id "  puwAI )" crlf))
)

(defrule lick1
(declare (salience 4900))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick1   "  ?id "  cAta )" crlf))
)

;@@@--- Added by Nandini(16-4-14)
;The car was running at a tremendous lick.[hinkoja]
(defrule lick2
(declare (salience 5000))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 tremendous)
;(kriyA-at_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick2   "  ?id "  gawi )" crlf))
)

;@@@--- Added by Nandini(16-4-14)
;The cat sat licking its paws.
;billI usake paFje cAtawe hue bETI.
(defrule lick3
(declare (salience 4900))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id1 ?id)
(id-root ?id1 sit)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAtawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick3   "  ?id "  cAtawe_hue )" crlf))
)

;@@@--- Added by Nandini(16-4-14)
;Flames were soon licking the curtains.[olad]
;lapateM unake pAzvoM meM aba CU rahIM WIM.
(defrule lick4
(declare (salience 4950))
(id-root ?id lick)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 flame|wave)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lick.clp 	lick4   "  ?id "  CU)" crlf))
)


;default_sense && category=noun	lehana	0
;"lick","N","1.lehana"
;You may have a lick of this pickle.
;--"2.WodI mAwrA"
;A small lick will change the look of this chair.
;--"3.gawi"
;The car was running at a tremendous lick.
;
;
