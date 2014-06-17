
(defrule trick0
(declare (salience 5000))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sazvAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trick.clp trick0 " ?id "  sazvAra )" crlf)) 
)

(defrule trick1
(declare (salience 4900))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sazvAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trick.clp trick1 " ?id "  sazvAra )" crlf)) 
)

(defrule trick2
(declare (salience 4800))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sazvAra));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " trick.clp trick2 " ?id "  sazvAra )" crlf)) 
)

(defrule trick3
(declare (salience 4700))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trick.clp	trick3  "  ?id "  " ?id1 "  sazvAra  )" crlf))
)

(defrule trick4
(declare (salience 4600))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trick.clp 	trick4   "  ?id "  Taga )" crlf))
)

;default_sense && category=verb	Taga	0
;"trick","VT","1.TaganA"
;Mohan was tricked by his friend.
;"trick out","PhrV","1.sazvAranA"
;??She was tricked out in blue dress.
;
;

;Added by Prachi Rathore[4-12-13].
;No one's gonna pull that kind of trick on me!
(defrule trick5
(declare (salience 4600))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trick.clp 	trick5   "  ?id " cAlAkI )" crlf))
)

;Added by Prachi Rathore[4-12-13].
;They had to think of a trick to get past the guards.[OALD]
(defrule trick6
(declare (salience 4700))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yojanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trick.clp 	trick6   "  ?id " yojanA )" crlf))
)

;Added by Prachi Rathore[4-12-13].
;I don't know what it was that did the trick, but I am definitely feeling much better.[OALD]
;He'll try every trick in the book to stop you from winning.[OALD]
(defrule trick7
(declare (salience 4700))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa  ?id ?)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trick.clp 	trick7   "  ?id " yukwi )" crlf))
)

;Added by Prachi Rathore[4-12-13].
;He had soon spent all the money and was up to his old tricks.[OALD]
(defrule trick8
(declare (salience 4700))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-to_saMbanXI  ?id1 ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trick.clp	trick8  "  ?id "  " ?id1 "  cAla  )" crlf))
)

;Added by Prachi Rathore[4-12-13].
(defrule trick9
(declare (salience 4700))
(id-root ?id trick)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(- ?id 1) play)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) Cala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " trick.clp	trick9  "  ?id "  " (- ?id 1) "  Cala_kara  )" crlf))
)
