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
;@@@ Added by Pramila(BU) on 06-03-2014

;A simple error of judgement meant that there was not enough food to go around.   ;oald
;The delay was due to human error.    ;oald
;विलम्ब मानवीय गलती के कारण था . 
;The computer system was switched off in error.    ;oald
;सङ्गणक सिस्टम गलती से बंद हो गया था.
;There is no room for error in this job.   ;oald
;इस काम में भूल के लिये गुंजाइश नहीं है . 
(defrule error0
(declare (salience 5000))
(id-root ?id error)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-due_to_saMbanXI  ?id1 ?id)(viSeRya-in_saMbanXI  ?id ?id1)(kriyA-in_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  error.clp 	error0   "  ?id "  galawI )" crlf))
)


;@@@ Added by Pramila(BU) on 06-03-2014
;Almost all accidents start with a simple error by the pilot.    ;oald
;लगभग सभी दुर्घटनाएँ विमान चालक की एक सरल गलती से शुरु होती हैं . 
(defrule error1
(declare (salience 5000))
(id-root ?id error)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?kri ?id)
(kriyA-by_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  error.clp 	error1   "  ?id "  galawI )" crlf))
)

;@@@ Added by Pramila(BU) on 06-03-2014
;I think you have made an error in calculating the total.   ;oald
;मुझे लगता है तुमने जोड हिसाब लगाने में गलती की है.
(defrule error2
(declare (salience 5000))
(id-root ?id error)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  error.clp 	error2   "  ?id "  galawI )" crlf))
)

;-----------------default rules----------------------------
;@@@ Added by Pramila(BU) on 06-03-2014
;Every calculated quantity which is based on measured values also has an error.   ;ncert
;प्रत्येक परिकलित राशि, जो मापित मानों पर आधारित होती है, में भी कुछ त्रुटि होती है.
;No payments were made last week because of a computer error.    ;oald
;एक सङ्गणक त्रुटि की वजह से पिछले सप्ताह कोई भी भुगतान नहीं हो पाए थे . 
(defrule error3
(declare (salience 100))
(id-root ?id error)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wruti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  error.clp 	error3   "  ?id "  wruti )" crlf))
)

;@@@ Added by Pramila(BU) on 06-03-2014
(defrule error4
(declare (salience 0))
(id-root ?id error)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wruti))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  error.clp 	error4   "  ?id "  wruti )" crlf))
)

