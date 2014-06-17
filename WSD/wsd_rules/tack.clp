
(defrule tack0
(declare (salience 5000))
(id-root ?id tack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tack.clp 	tack0   "  ?id "  xiSA )" crlf))
)

;"tack","N","1.xiSA[TIka_yA_galawa_rAswe_para]"
;It is good that you changed your tack now.
;--"2.havA_kI_xiSA_meM_jahAja_kI_baDawa"
;It is a tack for the ship.
;--"3.cipatI_biriMjI"
;Get a box of tacks from the shop.
;
(defrule tack1
(declare (salience 4900))
(id-root ?id tack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAzka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tack.clp 	tack1   "  ?id "  tAzka )" crlf))
)

;"tack","VT","1.tAzkanA"
;Tack the notice on the board.
;--"2.xiSA_baxalanA"
;He tacked the ship by turning the sail with favorable wind.
;


;Added by Prachi RAthore[02-12-13]
;The poems were tacked on at the end of the book.
(defrule tack2
(declare (salience 4900))
(id-root ?id tack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tack.clp	tack2  "  ?id "  " ?id1 "  lagA  )" crlf))
)

;Added by Prachi RAthore[02-12-13]
; They tacked one more provision onto the deal. ▪ The porch looked like it was just tacked on/onto the house..
(defrule tack3
(declare (salience 4900))
(id-root ?id tack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-onto_saMbanXI  ?id ?)(kriyA-on_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxabAjI_me_joda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tack.clp 	tack3   "  ?id "  jalxabAjI_me_joda )" crlf))
)
