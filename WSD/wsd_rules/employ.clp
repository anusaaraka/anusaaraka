;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################
;Under these assumptions, the trajectory of an alpha-particle can be computed employing Newton's second law of motion and the Coulomb's law for electrostatic force of repulsion between the alpha-particle and the positively charged nucleus. 
;इन अभिधारणाओं के आधार पर ऐल्फा - कण और धनावेशित नाभिक के मध्य स्थिर वैद्युत प्रतिकर्षण बल के कूलॉम - नियम तथा न्यूटन के गति के द्वितीय नियम का उपयोग करके ऐल्फा - कण के प्रक्षेप पथ का अभिकलन किया जा सकता है. 
;ina aBiXAraNAoM ke AXAra para ElPA - kaNa Ora XanAveSiwa nABika ke maXya sWira vExyuwa prawikarRaNa bala ke kUloYma - niyama waWA nyUtana 
;ke gawi ke xviwIya niyama kA upayoga karake ElPA - kaNa ke prakRepa paWa kA aBikalana kiyA jA sakawA hE. 

;He employed the computers to solve the problem.
;उसने समस्या को हल करने के लिए संगणक का उपयोग किया.
;usane samasyA ko hala karane ke lie saMgaNaka kA upayoga kiyA


;You should employ your time better.
;तुम्हे अपने समय का अच्छी तरह उपयोग करना चाहिए.
;wumhe apane samaya kA acCI waraha upayoga karanA cAhie.

;It is necessary to employ secret measures to get one's ends.
;किसी के परिणाम को प्राप्त करने के लिए गुप्त उपायों का उपयोग करना आवश्यक है.
;yaha eka ke siroM ko prApwa karane ke lie gupwa upAyoM kA upayoga karanA AvaSyaka hE.

;It is necessary to employ the hammer to drive the nail.
;कील को लगाने के लिए हथौडे का उपयोग करना आवश्यक है.
;kIla ko lagAne ke lie haWOde ko upayoga karanA AvaSyaka hE.

;In this stage , the teacher stands at the front of the class , employing books as the sole teaching device , verbally explaining and physically directing lessons . 
;इस अवस्था में , शिक्षक कक्षा के समझ खड़ा होता ( या होती ) है - केवल पुस्तकों को ही शिक्षण सामग्री की तरह उपयोग करते हुए , मौखिक रूप से स्पष्टीकर पाठ निदेशित करते हुए |

(defrule employ0
(declare (salience 4900))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-vAkyakarma  ?id ?id1)(kriyA-aXikaraNavAcI_avyaya  ?id ?id1)(kriyA-kriyA_viSeRaNa  ?id ?id1)(kriyA-kqxanwa_karma  ?id1 ?id)(saMjFA-to_kqxanwa  ?id2 ?id)) 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ0   "  ?id "   upayoga_kara  )" crlf))
)


;Our time could be usefully employed in attending to business matters.
;अपना समय व्यापार विषयों को समझने में उपयोग करना चाहिए.
;apanA samaya vyApAra viRayoM ko samaJane meM prayoga karanA cAhie.

;One does not employ hands for all kind of work .
;सभी प्रकार के कार्यो के लिये हाथ का उपयोग नहीं करते हैं.
;saBI prakAra ke kAryo ke liye hAWa kA prayoga nahIM karawe hEM.

;The same can be done over widespread areas by employing the drought weapon . 
;यही बात अनावृष्टि शस्त्र के उपयोग  करने से विस्तृत क्षेत्रों में की जा सकती है | 
;yahI bAwa anAvqRti Saswra ke upayoga karane se viswqwa kRewroM meM kI jA sakawI hE.
;In doing so, [employ] Newton's third law. 
;ऐसा करने के लिए न्यूटन का तृतीय नियम उपयोग कीजिए.

(defrule employ1
(declare (salience 5000))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-for_saMbanXI  ?id ?id1)(kriyA-by_saMbanXI  ?id1 ?id)(and(kriyA-in_saMbanXI  ?id ?id1)(kriyA-to_saMbanXI  ?id1 ?id2))(and(kriyA-in_saMbanXI  ?id ?id1)(kriyA-kriyA_viSeRaNa  ?id1 ?id2)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ1   "  ?id "   upayoga_kara  )" crlf))
)


;This readjustment requires the help of vocational council , social worker , employment exchange and original employing authority . 
;फिर से इस समंजन के लिए उसे व् यावसायिक परिषद सामाजिक कार्यकर्ता , रोजगार दफ्तर और पहले के नियोक्‍ता दफ्तर की आवश् यकता होती है | 
;Pira se isa samaMjana ke lie use v yAvasAyika pariRaxa sAmAjika kAryakarwA , rojagAra xaPwara Ora pahale kI niyokZwA xaPwara kI AvaSyakawA howI hE |
(defrule employ2
(declare (salience 4500))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id employing|employed)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyokZwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ2   "  ?id " niyokZwA  )" crlf))
)


;He has employed the students into the project.
;उसने छात्रों को प्रोजैक्ट में नियुक्त किया.
;usane CAwroM ko projEkta meM niyukwa kiyA.

;He agreed to employ the job applicant.
;वह नौकरी आवेदक को नियुक्त करने के लिये सहमत हुआ.
;vaha nOkarI Avexaka ko niyukwa karane ke liye sahamawa huA.

;She is employed as a teacher.
;उसको अध्यापक के रूप में नियुक्त किया.

(defrule employ3
(declare (salience 4800))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-into_saMbanXI  ?id ?id1)(kriyA-kriyArWa_kriyA  ?id1 ?id)(kriyA-as_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ3   "  ?id " niyukwa_kara )" crlf))
)


;The spare time was employed in reading.
;खाली समय पढने में लगाया.
;KAlI samaya paDane meM lagAyA.

;She employed several months in learning Swahili.
;उसने स्वाहिली सीखने में कई महीने लगाए.
;usane suhAlI sIKane meM kaI mahIne lagAe.

;My father employed me into business.
;मेरे पिता ने मुझे व्यापार में लगाया.
;mere piwA ne muJe vyApAra ke XanXe meM lagAyA.
(defrule employ4
(declare (salience 4950))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?id2)(and(kriyA-into_saMbanXI  ?id ?id1)(id-word ?id1 business)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ4   "  ?id " lagA )" crlf))
)


;Collecting stamps employs a lot of his time.
;मोहरें इकट्ठे करने में उसका बहुत समय लगता है.
;mohareM ikatTe karanA bahuwa samaya lewI hE.
(defrule employ5
(declare (salience 4900))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(AjFArWaka_kriyA  ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ5   "  ?id " laga )" crlf))
)

;---------------------------------------default rules-----------------------------------------

;How many people has she employed?
;वह कितने लोगो को काम पर लगा चुकी है?
(defrule employ6
(declare (salience 4000))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_para_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ6   "  ?id " kAma_para_lagA )" crlf))
)

(defrule employ7
(declare (salience 4000))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkarI_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ7   "  ?id " nOkarI_xe )" crlf))
)

(defrule employ8
(declare (salience 4000))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOkarI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ8   "  ?id " nOkarI )" crlf))
)

(defrule employ9
(declare (salience 3000))
(id-root ?id employ)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rojagAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  employ.clp 	employ9   "  ?id " rojagAra )" crlf))
)
