
(defrule mine0
(declare (salience 5000))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mines)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KAna))
(assert (id-wsd_number ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mine.clp  	mine0   "  ?id "  KAna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number  " ?*wsd_dir* "  mine.clp       mine0   "  ?id " s )" crlf))
)

(defrule mine1
(declare (salience 4900))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine1   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine1   "  ?id " kA_vAlA )" crlf))
)

(defrule mine2
(declare (salience 4800))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mine.clp 	mine2   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  mine.clp      mine2   "  ?id " kA_vAlA )" crlf))
)

(defrule mine3
(declare (salience 4700))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 2) is)
(id-word =(- ?id 1) not )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine3   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine3   "  ?id " kA_vAlA )" crlf))
)

(defrule mine4
(declare (salience 4600))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 2) are)
(id-word =(- ?id 1) not )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine4   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine4   "  ?id " kA_vAlA )" crlf))
)

(defrule mine5
(declare (salience 4500))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 2) was)
(id-word =(- ?id 1) not )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine5   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine5   "  ?id " kA_vAlA )" crlf))
)

(defrule mine6
(declare (salience 4400))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 2) were)
(id-word =(- ?id 1) not )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine6   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine6   "  ?id " kA_vAlA )" crlf))
)

(defrule mine7
(declare (salience 4300))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 1) is )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine7   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine7   "  ?id " kA_vAlA )" crlf))
)

(defrule mine8
(declare (salience 4200))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 1) are )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine8   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine8   "  ?id " kA_vAlA )" crlf))
)

(defrule mine9
(declare (salience 4100))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 1) was )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine9   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine9   "  ?id " kA_vAlA )" crlf))
)

(defrule mine10
(declare (salience 4000))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 1) were )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine10   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine10   "  ?id " kA_vAlA )" crlf))
)

(defrule mine11
(declare (salience 3900))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word ?id1 coal)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id KAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mine.clp  	mine11   "  ?id "  KAna )" crlf))
)

(defrule mine12
(declare (salience 3800))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-word =(- ?id 1) of )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id merA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mine.clp  	mine12   "  ?id "  merA )" crlf))
)

(defrule mine13
(declare (salience 3700))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suraMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mine.clp 	mine13   "  ?id "  suraMga )" crlf))
)

(defrule mine14
(declare (salience 3600))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mine )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEM))
(assert (id-H_vib_mng ?id kA_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  mine.clp  	mine14   "  ?id "  mEM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  mine.clp       mine14   "  ?id " kA_vAlA )" crlf))
)

(defrule mine15
(declare (salience 3500))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mine.clp 	mine15   "  ?id "  KAna )" crlf))
)

;"mine","N","1.KAna"
;The mine had to be closed because of the flooding.
;
(defrule mine16
(declare (salience 3400))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id merA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mine.clp 	mine16   "  ?id "  merA )" crlf))
)

;"mine","Pron","1.merA"
;The money I earn is mine to spend as I wish.
;
(defrule mine17
(declare (salience 3300))
(id-root ?id mine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAna_Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mine.clp 	mine17   "  ?id "  KAna_Koxa )" crlf))
)

;"mine","V","1.KAna_KoxanA"
;Be careful they are mining for coal in this area.
;
