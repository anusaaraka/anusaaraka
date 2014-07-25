

;Added by Meena(19.3.10)
;He was convicted under an obscure 1990 law . 
(defrule under0
(declare (salience 5000))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 law)
(kriyA-under_saMbanXI  ? ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_wahawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp     under0   "  ?id "  ke_wahawa )" crlf))
)




(defrule under1
(declare (salience 5000))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMwargawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under1   "  ?id "  ke_aMwargawa )" crlf))
)



(defrule under2
(declare (salience 4900))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under2   "  ?id "  ke_nIce )" crlf))
)

;@@@ ADDED BY PRACHI RATHORE
; These ancient woodlands are under threat from new road developments.[oald]
(defrule under3
(declare (salience 5000))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) pressure|pudding|Art|threat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under3   "  ?id "  me )" crlf))
)

;"under","Prep","1.ke_nIce/ke_wale/se_kama/ke_aXIna"
;He is doing his doctorate under Prof.Mohan.
;


;;@@@  ADDED BY PRACHI RATHORE
;Elements heavier than iron are also made inside stars [under] special conditions.[gyannidhi]
;  असाधारण स्थिति में लोहा की अपेक्षा भारी तत्व  भी तारों के अन्दर  बनाए गये हैं . 
;The police kept the accused patient under observation.[shiksharthi]
;पुलीस ने पर्यवेक्षण में अभियुक्त मरीज रखा .
(defrule under4
(declare (salience 5000))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-under_saMbanXI  ? ?id1)(kriyA-under_saMbanXI  ? ?id1))
(id-root ?id1 condition|guidance|observation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under4   "  ?id "  meM )" crlf))
)

;@@@ ADDED BY PRACHI RATHORE
;But the fact is that for a while Gangotri was under the rule of the Gurkhas.[gyannidhi]
; बात यह थी कि गंगोत्री कुछ समय के लिए गोरख राज्य के अधीन हो गयी थी।
;Educated opinion in the country could not be expected to remain satisfied with a University of this type and the question of amending the Act of 1857 came under active consideration of the University as early as 1890.[gyannidhi]
;देश में शिक्षित लोग इस किस्म के विश्वविद्यालय से संतुष्ट रहें, यह आशा नहीं की जा सकती थी और 1857 के अधिनियम के संशोधन का प्रश्न 1890 में ही विश्वविद्यालय द्वारा सक्रिय रूप से सोच-विचार के लिए चुन लिया गया था।
(defrule under5
(declare (salience 5000))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(kriyA-under_saMbanXI  ? ?id1)
(id-root ?id1 rule|consideration)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aXIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under5   "  ?id "  ke_aXIna)" crlf))
)


;@@@ ADDED BY PRACHI RATHORE[10-1-14]
(defrule under6
(declare (salience 4900))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-under_saMbanXI  ? ?id1)
(id-root ?id1 teacher)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ki_xeKareKa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under6   "  ?id "  ki_xeKareKa_meM )" crlf))
)

;@@@ ADDED BY PRACHI RATHORE[28-1-14]
;Under Asutosh the Calcutta University assumed a cosmopolitan character. [gyan-nidhi]
;आशुतोष के नेतृत्व में कलकत्ता विश्वविद्shiksharthiयालय ने सही राष्ट्रीय स्वरूप प्राप्त किया।
(defrule under7
(declare (salience 4900))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(kriyA-under_saMbanXI  ? ?id1)
(or(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_newqwva_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under7   "  ?id "  ke_newqwva_meM )" crlf))
)
