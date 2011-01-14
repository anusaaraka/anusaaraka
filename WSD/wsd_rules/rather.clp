
(defrule rather0
(declare (salience 5000))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather0   "  ?id "  kAPI )" crlf))
)

(defrule rather1
(declare (salience 4900))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather1   "  ?id "  kAPI )" crlf))
)

(defrule rather2
(declare (salience 4800))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather2   "  ?id "  kAPI )" crlf))
)

(defrule rather3
(declare (salience 4700))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather3   "  ?id "  kAPI )" crlf))
)

(defrule rather4
(declare (salience 4600))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 than)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather4   "  ?id "  kAPI )" crlf))
)

(defrule rather5
(declare (salience 4500))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 too)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather5   "  ?id "  kAPI )" crlf))
)

(defrule rather6
(declare (salience 4400))
(id-root ?id rather)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rather.clp 	rather6   "  ?id "  balki )" crlf))
)

;"rather","Adv","1.balki"
;He came very late last night or rather in the wee hours this morning.
;My bat is rather more expensive than his.   
;This science book is rather too easy for class seven.
;It's rather a shame that she missed the concert.   
;
;'rather' behaves like an adverb.
;(Should be added to the list of adverbs)
;----------------------------------------------------------------------
;suwra  balki^kuCa_haxa_waka
;rather  balki
;He came very late last night or rather in the wee hours this morning.
;However, in the following sentences 'rather  balki' is not good.
;jaba BI 'rather' kA prayoga howA hE, generally background meM kahIM
;'balki' hE.
;uxA:
;A: He resembles his mother.
;B: No, He looks rather like his father.
;
;My bat is rather more expensive than his.
;This science book is rather too easy for class seven.
;It's rather a shame that she missed the concert.
;I would rather go.
