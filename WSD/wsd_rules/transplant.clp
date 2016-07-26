;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;;@@@   ---Added by Prachi Rathore
; She is a New Yorker who recently transplanted to the West Coast.
; वह एक दक्षिणी स्थानान्तरित है जो अब न्यूयार्क में रहती है . .[m-w] 
(defrule transplant0
(declare (salience 5000))
(id-root ?id transplant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnAnwariwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transplant.clp 	transplant0   "  ?id "  sWAnAnwariwa )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;Japanese production methods have been transplanted into some British factories.[oald]
;जापानी उत्पादन प्रणाली कुछ ब्रिटेन की फैक्टरियों के अंदर स्थानान्तरित की गयीं हैं .  
(defrule transplant1
(declare (salience 5000))
(id-root ?id transplant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-into_saMbanXI  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnAnwariwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transplant.clp 	transplant1   "  ?id "  sWAnAnwariwa_kara )" crlf))
)

;;@@@   ---Added by Prachi Rathore
; She carefully transplanted the seedlings.[m-w]
;उसने सावधानी से अङ्कुर रोपे . 
(defrule transplant2
(declare (salience 5000))
(id-root ?id transplant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 seed|bush|plant|seedling)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ropiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transplant.clp 	transplant2   "  ?id " ropiwa_kara)" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;He had a heart transplant .[cambridge]
;उसका एक हृदय प्रतिरोपण था .   
(defrule transplant3
(declare (salience 4000))
(id-root ?id transplant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiropaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transplant.clp 	transplant3  "  ?id " prawiropaNa)" crlf))
)

;;@@@   ---Added by Prachi Rathore
;Surgeons have successfully transplanted a liver into a four-year-old boy.[oald]
;शल्य चिकित्सक एक चार वर्षिय लडके के अंदर यकृत सफलतापूर्वक प्रतिरोपित कर चुके हैं . 
(defrule transplant4
(declare (salience 4000))
(id-root ?id transplant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiropiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  transplant.clp 	transplant4   "  ?id " prawiropiwa_kara)" crlf))
)
