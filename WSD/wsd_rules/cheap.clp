;$$$  Modified by Preeti(8-5-14)
;It will be a lot cheaper to go by bus. [Cambridge Learner’s Dictionary]
;basa se jAnA bahuwa aXika saswA hogA.
(defrule cheap0
;(declare (salience 5000));salience changed
(id-root ?id cheap)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheap.clp 	cheap0   "  ?id "  saswA )" crlf))
)
;"cheap","Adj","1.saswA"
;Bananas are available at cheap rates in this season.
;
;
;$$$  Modified by Preeti(8-5-14)
;I was tired of his cheap jokes at my expense. [Oxford Advanced Learner's Dictionary]
;mEM apanI kImawa para usake Gatiye cutakuloM se Waka cUkA WA.
;(added by Darpan Baweja : NIT allahabad)
;(Rahul is a cheap boy)
(defrule cheap1
(declare (salience 1000));salience changed
(id-root ?id cheap)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) person|man|woman|girl|boy|guy);condition changed
(id-cat ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id);condition added
(id-root ?id1 joke|crook|person|man|woman|girl|boy|guy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cheap.clp 	cheap1   "  ?id "  GatiyA )" crlf))
)


