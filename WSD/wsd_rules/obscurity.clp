;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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


;@@@ Added by Pramila(BU) on 28-03-2014
;The course teaches students to avoid ambiguity and obscurity of expression.   ;oald
;पाठ्यक्रम बेशक  छात्रों को  अभिव्यक्ति की अस्पष्टता और द्वयर्थकता दूर करना सिखाता है.
(defrule obscurity0
(declare (salience 5000))
(id-word ?id obscurity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 expression|situation|style|language)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aspaRtawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obscurity.clp 	obscurity0   "  ?id "  aspaRtawA )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
;He led a life of obscurity.   ;shiksharthi
;वह अप्रसिद्धि क् जीवन व्यतीत करता था.
(defrule obscurity1
(declare (salience 5000))
(id-word ?id obscurity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprasixXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obscurity.clp 	obscurity1   "  ?id "  aprasixXi )" crlf))
)
;---------------default rules------------------------
;@@@ Added by Pramila(BU) on 28-03-2014
;He lives in obscurity.   ;shiksharthi
;वह अंधेरे में रहता है.
(defrule obscurity2
(declare (salience 100))
(id-word ?id obscurity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obscurity.clp 	obscurity2   "  ?id "  aMXerA )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
(defrule obscurity3
(declare (salience 0))
(id-word ?id obscurity)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obscurity.clp 	obscurity3   "  ?id "  aMXerA )" crlf))
)
