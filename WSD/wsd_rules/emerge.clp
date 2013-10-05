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
;Actually, a truly satisfactory physical understanding of the dual nature of matter and radiation has not emerged so far.  
;वास्तव में, अभी तक द्रव्य तथा विकिरण के द्वैत प्रकृति की एक वस्तुतः सन्तोषजनक भौतिक समझ विकसित नहीं हो सकी है.
;vAswava meM, aBI waka xravya waWA vikiraNa ke xvEwa prakqwi kI eka vaswuwaH sanwoRajanaka BOwika samaJa vikasiwa nahIM ho sakI hE.

(defrule emerge0
(declare (salience 5000))
(id-root ?id emerge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id verb)
(not (id-root ?id1 suddenly)) ; Suddenly, the proprietor emerged from his office.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikasiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  emerge.clp 	emerge0   "  ?id "  vikasiwa_ho )" crlf))
)


;Gandhiji emerged as an important leader in Indias freedom struggle.
;गाँधीजी भारत के स्वतंत्रता संघर्ष में एक महत्तवपूर्ण नेता के रूप मे उभर कर आए.
;gAzXIjI BArawa ke svawaMwrawA saMGarRa meM eka mahawwavapUrNa newA ke rUpa me uBara kara Ae.

(defrule emerge1
(declare (salience 5000))
(id-root ?id emerge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBara_kara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  emerge.clp 	emerge1   "  ?id " uBara_kara_A  )" crlf))
)

;------------------------------ Default rules ----------------------------------------

;Suddenly, the proprietor emerged from his office.
;अचानक, मालिक अपने कार्यालय  से निकला.
;acAnaka, mAlika apane kAryAlaya  se nikalA.

;Some nice results emerged from the study.
;अध्ययन से कुछ अच्छे परिणाम निकले.
;aXyayana se kuCa acCe pariNAma nikale.

;He emerged from his ordeal with dignity.
;वह प्रतिष्ठा के साथ अपनी अग्नि परीक्षा से निकला.
;vaha prawiRTA ke sAWa apanI agni parIkRA se nikalA.

(defrule emerge2
(declare (salience 4000))
(id-root ?id emerge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  emerge.clp 	emerge2   "  ?id " nikala  )" crlf))
)

(defrule emerge3
(declare (salience 3000))
(id-root ?id emerge)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  emerge.clp 	emerge3   "  ?id " prakata_ho  )" crlf))
)

