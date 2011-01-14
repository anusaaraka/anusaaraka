
(defrule accomplish0
(declare (salience 5000))
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accomplished )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saPala_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accomplish.clp  	accomplish0   "  ?id "  saPala_huA )" crlf))
)

; verb meaing added by Amba; meaning need to be checked.
(defrule accomplish1
(declare (salience 4900))
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id accomplished )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  accomplish.clp  	accomplish1   "  ?id "  nipuNa )" crlf))
)

;"accomplished","Adj","1.nipuNa"
;She is an accomplished dancer.
;
;
(defrule accomplish2
(declare (salience 4800))
(id-root ?id accomplish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_saPala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  accomplish.clp 	accomplish2   "  ?id "  kAma_saPala_kara )" crlf))
)

;default_sense && category=verb	pUrA_kara	0
;"accomplish","VT","1.pUrA_karanA"
;We have accomplished our task of nabbing the murderers. 
;
;
