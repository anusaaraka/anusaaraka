;##############################################################################
;#  Copyright (C) 2002-2005 Rashmi Ranjan (rashmi.ranjan810@gmail.com)
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
;Try to keep out of the sun.[m-w]
;धूप से बाहर रखने की कोशिश करें.
;I think I've had a bit too much sun today I've got a headache.[cambridge]
;मुझे लगता है मैंने आज बहुत ज्यादा धूप ले  लिया है  कि मुझे सिरदर्द हो गया है.
(defrule sun0
(declare (salience 5000))
(id-root ?id sun)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id1 ?id)(kriyA-of_saMbanXI  ?id1 ?id)(samAsa  ?id1 ?id)(viSeRya-in_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sun.clp 	sun0   "  ?id "  XUpa)" crlf))
)

;The plant needs full sun.[m-w]
;संयंत्र को पूर्ण धूप की जरूरत है.
;We went to the beach to get/catch some sun. [=to spend time in the sunlight][m-w]
;हम कुछ धूप लेने के लिए समुद्र तट के पास गये.
(defrule sun1
(declare (salience 5000))
(id-root ?id sun)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?id1)(viSeRaNa-viSeRaka  ?id ?id1))
(id-root ?id1 full|some|much)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sun.clp 	sun1   "  ?id "  XUpa)" crlf))
)

;I couldn't see because the sun was in my eyes. [=the bright light of the sun was shining directly in my eyes][m-w]
;मैं नहीं देख सका क्योंकि धूप मेरी आँखो में लग रही थी.
(defrule sun2
(declare (salience 5000))
(id-root ?id sun)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
(id-root ?id1 eye)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sun.clp 	sun2   "  ?id "  XUpa)" crlf))
)

;#################################### Default Rules ##########################################################
;The sun rises in the East and sets in the West.[cl]
;सूरज पूरब में उगता है अौर पशिचम में डूबता है.
(defrule sun3
(id-root ?id sun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUraja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sun.clp 	sun3   "  ?id "  sUraja)" crlf))
)

;He is sunning by the pool.[m-w]
;वह पूल पर धूप सेंक रहा है.
(defrule sun4
(id-root ?id sun)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUpa_seMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sun.clp 	sun4   "  ?id "  XUpa_seMka)" crlf))
)
