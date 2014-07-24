
(defrule enter0
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurUAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " enter.clp	enter0  "  ?id "  " ?id1 "  SurUAwa_kara  )" crlf))
)

;We have entered on the new business.
;hamane nae vyApAra kI SurUAwa kI hE
(defrule enter1
(declare (salience 4000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praveSa_kara))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter1   "  ?id "  praveSa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enter.clp     enter1   "  ?id " meM )" crlf)
)
)

;"enter","V","1.praveSa_kara"

;"enter","VI","1.BIwara_AnA"
;The ship entered an area of shallow marshes..
;

;@@@ Added by Pramila(BU) on 08-01-2014  [meaning changed from "GusA" to "praviRta_kara" and condition added
;He entered her name in the school register.   ;old clp
;उसने स्कूल के रजिस्टर में अपना नाम प्रविष्ट किया.
(defrule enter3
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praviRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter3   "  ?id "  praviRta_kara )" crlf))
)

;"enter","VT","1.GusAnA"
;He entered her name in the school register.
;

;@@@ added by Pramila(BU) on 16-12-2013
;The thieves had sawn through the wooden planks, making a kind of trap-door, which they must have pushed up while entering.
;चोरों ने लकड़ी के तखतों को चीर कर छत का द्वार बनाया था जिसे प्रवेश करते समय उन्होंने धक्का दिया होगा ।
(defrule enter4
(declare (salience 5000))
(id-root ?id enter)
(id-word ?id entering)
?mng <-(meaning_to_be_decided ?id)
(kriyA-while_saMbanXI  ?id1 ?id)
(id-word =(- ?id 1) while)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) praveSa_karawe_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " enter.clp	enter4  "  ?id "  " (- ?id 1) "  praveSa_karawe_samaya  )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;How many students have been entered for the exam?      ;oald
;परीक्षा के लिए कितने छात्र दर्ज हो चुके हैं?
(defrule enter5
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(id-root ?id1 exam|examination)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarja_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter5   "  ?id "  xarja_ho )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;Only four British players have entered for the championship.             ;oald
;केवल चार ब्रिटिश खिलाड़ियों चैम्पियनशिप के लिए भाग लिया है.
(defrule enter6
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(id-root ?id1 championship|competition|game|trophy)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter6   "  ?id "  BAga_le )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;Irish trainers have entered several horses in the race.            ;oald
;आयरिश प्रशिक्षकों  ने दौड़ में कई घोड़ों को सम्मिलित  किया है.
(defrule enter7
(declare (salience 4900))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id2)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter7   "  ?id "  sammiliwa_kara )" crlf))
)


;@@@ added by Pramila(BU) on 16-12-2013
;to enter data into a computer               ;oald
;कम्प्यूटर मे डेटा डालने के लिए
(defrule enter9
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter9   "  ?id "  dAla )" crlf))
)


;@@@ added by Pramila(BU) on 16-12-2013
;to enter figures on a spreadsheet.          ;oald
;एक स्प्रेडशीट पर आंकड़े अंकित करने के लिए
(defrule enter10
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMkiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter10   "  ?id "  aMkiwa_kara )" crlf))
)

;@@@ added by Pramila(BU) on 16-12-2013
;to enter a school/college/university     ;oald
;स्कूल/महाविद्यालय/विश्विद्यालय में दाखिल होने के लिए
(defrule enter11
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 school|college|university|institute|politics)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAKila_ho))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter11   "  ?id "  xAKila_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enter.clp     enter11   "  ?id " meM )" crlf)
)
)

;@@@ added by Pramila(BU) on 16-12-2013
;to enter Parliament(= become an MP)    ;oald
;to enter the Church(= become a priest)   ;oald
(defrule enter12
(declare (salience 5000))
(id-root ?id enter)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 parliament|church)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryaBAra_grahaNa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enter.clp 	enter12   "  ?id "  kAryaBAra_grahaNa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enter.clp     enter12   "  ?id " ka )" crlf)
)
)


;-------------removed rule------------------
; enter2
;	if enter category is verb  then BIwara_A
; enter3
;	if enter category is verb  then GusA

