

;@@@ Added by jagriti (30.1.2014)
;The staple of this cotton is quite large.
;इस कपास का रेशा काफी बड़ा है . 
(defrule staple3
(declare (salience 5000))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 cotton|silk)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id reSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple3   "  ?id "  reSA )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;Paper is the staple of Japan.
;कागज जापान का प्रधान माल है . 
(defrule staple4
(declare (salience 4900))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 rubber|paper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praXAna_mAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple4   "  ?id "  praXAna_mAla )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;The import of staple from eastern countries.
;पूर्वी देशों से कच्चा माल का आयात.
(defrule staple5
(declare (salience 4800))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id1 ?id)
(id-root ?id1 import|export)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaccA_mAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple5   "  ?id "  kaccA_mAla )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;What are the main staple of body.
;शरीर के प्रमुख तत्व क्या हैं . 
(defrule staple6
(declare (salience 4700))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 body)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple6   "  ?id "  wawva )" crlf))
)

;@@@ Added by jagriti(30.1.2014)
;Staple of discussion is women empowerment.
;चर्चा का मुख्य विषय स्त्री सामर्थ्य है . 
(defrule staple7
(declare (salience 4600))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 discussion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya_viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple7   "  ?id "  muKya_viRaya )" crlf))
)
;................Default Rule.....
(defrule staple0
(declare (salience 100))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya_aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple0   "  ?id "  muKya_aMSa )" crlf))
)

;"staple","Adj","1.muKya_aMSa"
;carbohydrate are the staple components of our diet.
;
(defrule staple1
(declare (salience 100))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id stepala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple1   "  ?id "  stepala )" crlf))
)

;"staple","N","1.stepala"
;These documents need staple.
;
(defrule staple2
(declare (salience 100))
(id-root ?id staple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id stepala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  staple.clp 	staple2   "  ?id "  stepala_kara )" crlf))
)


;"staple","V","1.stepala_karanA"
;I stapled all my test paper.
;
