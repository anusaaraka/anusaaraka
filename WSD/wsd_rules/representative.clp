;$$$ Modified by Anita--24..2.2014
;Is a questionnaire answered by 500 people truly representative of national
;opinion.  [old clp sentennce] 
;क्या 500 लोगों द्नारा उत्तर की जाने वाली  प्रश्नावली  सही मायने में राष्ट्रीय राय  का प्रातिनिधिक  है ?
(defrule representative0
(declare (salience 4700))
(id-root ?id representative)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id ?) ; Added relation by Anita
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAwiniXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  representative.clp 	representative0   "  ?id "  prAwiniXika )" crlf))
)

;"representative","Adj","1.prAwiniXika"

;@@@ Added by Anita--24.2.2014 
;I have sent my representative to attend the conference. [old clp. sentence ]
;मैं अपने प्रतिनिधि को कॉन्फ्रेन्स में शामिल होने के लिए भेज चुका हूँ ।
(defrule representative1
(declare (salience 4900))
(id-root ?id representative)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXi))
(assert (kriyA_id-object_viBakwi ?id1 ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  representative.clp 	representative1   "  ?id "  prawiniXi)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  representative.clp      representative1   "  ?id " ko )" crlf))
)

;@@@ Added by Anita--25.2.2014
;The state is being ruled by a representative government. [old clp sentence]
;राज्य प्रतिनिधि सरकार द्रारा चालित किया जा रहा है ।
;The participants in the experiment were drawn from a representative population. [By mail]
; प्रयोग में भाग लेने वाले एक प्रातिनिधिक जनसंख्या से निकाले गये थे ।
(defrule representative2
(declare (salience 4800))
(id-root ?id representative)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAwiniXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  representative.clp 	representative2   "  ?id "  prAwiniXi )" crlf))
)
;"representative","N","1.prawiniXi"
;I have sent my representative to attend the conference. 
;--"2.prawirUpa"
;He is a representative of the younger generation.
;--"3.prawiniXiwva_para__AXAriwa"
;The state is being ruled by a representative government.
;

;###################################default-rule###########################

;He is a representative of the younger generation. [old clp sentence]
;वह युवा पीढ़ी का एक प्रतिनिधि है ।
(defrule representative_default_noun
(id-root ?id representative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  representative.clp   representative_default_noun   "  ?id "  prawiniXi)" crlf))
)

