
(defrule tag0
(declare (salience 5000))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIwe_kI_GuNdI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag0   "  ?id "  PIwe_kI_GuNdI )" crlf))
)

;"tag","N","1.PIwe_kI_GuNdI"
;The tag of my shoe was lost .
;--"2.upanAma"
;The judge earned the tag of `Sir'.
;--"3.AMSika_praSna"
;`He is going. Isn't he?' is a tag question.
;
(defrule tag1
(declare (salience 4900))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag1   "  ?id "  bAzXa )" crlf))
)

;"tag","VT","1.bAzXanA"
;Tag the suitcase well with a knot.
;

;@@@ Added by Prachi Rathore[13-2-14]
;An apology was tagged onto the end of the letter.[oald]
;एक क्षमा याचना पत्र के अन्त में दी गयी थी . 
(defrule tag2
(declare (salience 5000))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-onto_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag2   "  ?id "  xe )" crlf))
)


;@@@ Added by Prachi Rathore[13-2-14]
; The police use electronic tags to monitor the whereabouts of young offenders on probation. [oald]
;पुलीस परिवीक्षाकाल तरुण अपराधियों के ठौर-ठिकाने पर नजर रखने के लिये  इलेक्ट्रनिक लेबल का उपयोग करती है . 
(defrule tag3
(declare (salience 5050))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lebala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag3   "  ?id "  lebala )" crlf))
)


;@@@ Added by Prachi Rathore[13-2-14]
; The country no longer wanted to be tagged as a Third World nation. [oald]
;
(defrule tag4
(declare (salience 5000))
(id-root ?id tag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upanAmiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tag.clp 	tag4   "  ?id "  upanAmiwa_ho )" crlf))
)
