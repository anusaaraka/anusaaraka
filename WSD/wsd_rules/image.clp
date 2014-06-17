;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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

;@@@ Added by Prachi Rathore
(defrule image0
(declare (salience 4900))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-RaRTI_viSeRaNa ?id ?)(viSeRya-of_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpanA-ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image0   "  ?id "  kalpanA-ciwra )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule image1
(declare (salience 4900))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 mind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpanA-ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image1   "  ?id "  kalpanA-ciwra )" crlf))
)


;@@@ Added by Prachi Rathore
;Customers view images and receive all the information about various products or services of companies through their websites.
;ग्राहक चित्रो को देखते है और  कंपनियों के विभिन्न उत्पादों या सेवाओं के बारे में उनकी वेबसाइटों के माध्यम से सभी जानकारी प्राप्त करते हैं|
(defrule image2
(declare (salience 5000))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 show|take|view|stare|series|capture|provide|city|strike|wall|carve|religious)
(or(kriyA-object ?id1 ?id)(kriyA-subject ?id1 ?id)(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image2   "  ?id "  ciwra )" crlf))
)


;@@@ Added by Prachi Rathore
;They ruined the image of the institution.
;उन्होंने संस्था की छवि को बर्बाद कर दिया.
;First they must make an apology for the revolution whose image they ruined. 
;सबसे पहले उन्हें उस क्रांति के लिए माफी मांगना चाहिए  जिसकी छवि उन्होने बर्बाद कर दी |
(defrule image3
(declare (salience 4900))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(id-root ?id1 institute|institution|organisation|corporate|care|damage|improve|manage|ruin|protect|affect)(id-cat_coarse ?id1 PropN))
(or(kriyA-object ?id1 ?id)(viSeRya-RaRTI_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cavi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image3   "  ?id "  Cavi )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule image6
(declare (salience 4900))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cavi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image6   "  ?id "  Cavi )" crlf))
)


;@@@ Added by Prachi Rathore[24-2-14]
;The company is trying to create a young energetic image.[verified sentence]
;kampanI eka waruNa ojasvI prawimA banAne ke lie prayAsa_kara rahI hE.
(defrule image7
(declare (salience 4500))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image7   "  ?id "  prawimA )" crlf))
)

;-----------Default Rule ------
;@@@ Added by Prachi Rathore
;default
(defrule image4
(declare (salience 4000))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibiMba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image4   "  ?id "  prawibiMba )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule image5
(declare (salience 4000))
(id-root ?id image)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAxqSya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  image.clp 	image5   "  ?id "  sAxqSya_ho )" crlf))
)

