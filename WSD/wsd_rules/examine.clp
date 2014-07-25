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


;@@@ Added by Pramila(Banasthali University) 
;This forced us to examine every facet of our business.             ;old
;इसने हमें हमारे व्यापार के हर पहलू को गौर से देखने के लिए मजबूर कर दिया.
(defrule examine0
(declare (salience 5000))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id1 ?id)
(id-root ?id1 force)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gOra_se_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine0   "  ?id "  gOra_se_xeKa )" crlf))
)



;@@@ Added by Pramila(Banasthali University) 
;The colleges set standards by examining candidates.    ;old
;कॉलेज अभ्यर्थी की परीक्षा लेकर मानदण्ड स्थापित करते हैं.
;The students will be examined in all subjects at the end of term.  ;oald
;कार्यकाल के अंत में छात्रों की सभी विषयों की परीक्षा ली जाएगी.
(defrule examine1
(declare (salience 5000))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 candidate|student)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine1   "  ?id " parIkRA_le  )" crlf))
)


;@@@ Added by Pramila(Banasthali University) 
;These ideas will be examined in more detail in Chapter 10.   ;oald
;इन विचारों का परीक्षण अध्याय 10 में अधिक विस्तार से किया जाएगा.
;The goods were examined for damage on arrival.          ;oald
;आगमन पर माल का क्षति के लिए परीक्षण किया गया.
;You are only being examined on this semester's work.                  ;oald
;आपका केवल इस सेमेस्टर के काम पर परीक्षण किया जा रहा है.
(defrule examine2
(declare (salience 4900))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-for_saMbanXI  ?id ?id1)(kriyA-on_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine2   "  ?id "  parIkRaNa_kara )" crlf))
)


;@@@ Added by Pramila(Banasthali University) 
;The council is to examine ways of reducing traffic in the city centre.     ;olad
;परिषद शहर के केंद्र में यातायात को कम करने के तरीकों का पता लगाने के लिए है.
;We need to examine how an accident like this can be avoided in the future.           ;oald
;हमें पता लगाने की आवश्यकता है कि इस तरह की दुर्घटना को  भविष्य में  कैसे टाला जा सकता है .

(defrule examine3
(declare (salience 4900))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine3   "  ?id " pawA_lagA  )" crlf))
)


;@@@ Added by Pramila(Banasthali University) 
;The research examined the effects of alcohol on long-term memory.  ???           ;oald
;अनुसंधान ने दीर्घकालिक स्मृति पर शराब के प्रभाव का अध्ययन किया.
;It is necessary to examine how the proposals can be carried out. ???                ;oald
;यह अध्ययन करना आवश्यक है कि प्रस्तावों को पास किया जाता है.

(defrule examine4
(declare (salience 5000))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-object  ?id ?id1)(id-root ?id1 effect))(saMjFA-to_kqxanwa  ?id1 ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXyayana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine4   "  ?id " aXyayana_kara  )" crlf))
)


;@@@ Added by Pramila(Banasthali University) 
;The police examined the evidence carefully.              ;m-w
;पुलिस ने सावधानी से सबूत की जाँच पड़ताल की.    
(defrule examine5
(declare (salience 5000))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 police)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_padZawAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine5   "  ?id " jAzca_padZawAla_kara  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) 
;An accountant has been hired to examine the company's books.   ???            ;m-w
;एक एकाउंटेंट को कंपनी की किताबों को जाँच करने के लिए नियुक्त किया गया है.
(defrule examine6
(declare (salience 5000))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 book)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine6   "  ?id " jAzca_kara  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;Thus the University was to be merely an examining body.       ;gyannidhi
;विश्वविद्यालय की तुलना में केवल एक परीक्षा लेने वाला विश्वविद्यालय ही था।
(defrule examine7
(declare (salience 5000))
(id-word ?id examining)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-kriyArWa_kriyA  ?id2 ?id1)
(kriyA-subject  ?id2 ?sub)
(id-root ?sub university|school|college)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 parIkRA_lene_vAlI_saMsWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " examine.clp	examine7  "  ?id "  " ?id1 "  parIkRA_lene_vAlI_saMsWA  )" crlf))
)
;-----------------------------------default rules---------------------------------------

;@@@ Added by Pramila(Banasthali University) 
;A doctor examined me and said I might need a caesarean.  ;old
;एक डॉक्टर ने मेरी जांच की और कहा मुझे एक शल्यक्रिया की आवश्यकता हो सकती थी.
;The doctor examined her but could find nothing wrong.   ;oald
;डॉक्टर ने उसकी जांच की लेकिन कुछ भी गलत नहीं मिला.
(defrule examine8
(declare (salience 3000))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine8   "  ?id " jAzca_kara  )" crlf))
)


;@@@ Added by Pramila(Banasthali University) 
(defrule examine9
(declare (salience 0))
(id-root ?id examine)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  examine.clp 	examine9   "  ?id "  jAzca_kara )" crlf))
)

