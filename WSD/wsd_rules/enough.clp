
(defrule enough0
(declare (salience 5000))
(id-root ?id enough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
(id-word =(+ ?id 1) for)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enough.clp 	enough0   "  ?id "  paryApwa )" crlf))
)

;This house isn't big enough for us.
(defrule enough1
(declare (salience 4900))
(id-root ?id enough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enough.clp 	enough1   "  ?id "  kAPI )" crlf))
)

;He seemed pleasant enough to me.
;She's old enough to decide for herself.
(defrule enough2
(declare (salience 4800))
(id-root ?id enough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enough.clp 	enough2   "  ?id "  paryApwa )" crlf))
)

;"enough","Adv","1.paryApwa"
;Have you eaten enough?
;

;@@@ Added by Pramila(Banasthali University)
;There was enough evidence in favour of atomic hypothesis.
(defrule enough3
(declare (salience 4700))
(id-root ?id enough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paryApwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enough.clp 	enough3   "  ?id "  paryApwa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 14-02-2014
;The time is right enough but what about my building?           .:www.online-literature.com/tolstoy/2891/
;समय बिल्कुल ठीक है पर मकान को क्या करुं !
(defrule enough4
(declare (salience 5000))
(id-root ?id enough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-root =(- ?id 1) right)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enough.clp 	enough4   "  ?id "  bilkula )" crlf))
)


