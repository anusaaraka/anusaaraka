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

;@@@ Added by Pramila(BU) on 18-02-2014
;The committee has oversight of finance and general policy.   ;oald
;समिति ने वित्त और सामान्य नीति की जिम्मेदारी ली है. 
;Who has oversight of genetic testing?  ;cald
;किसने आनुवंशिक परीक्षण की जिम्मेदारी ली है?
(defrule oversight1
(declare (salience 4900))
(id-root ?id oversight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jimmexArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oversight.clp 	oversight1   "  ?id "  jimmexArI )" crlf)
))

;--------------------deafult rules----------------------
;@@@ Added by Pramila(BU) on 18-02-2014
;You can never entirely eliminate human error and oversight.   ;oald
;आप पूरी तरह से मानव त्रुटि और गलती को समाप्त नहीं कर सकते. 
(defrule oversight2
(declare (salience 100))
(id-root ?id oversight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oversight.clp 	oversight2   "  ?id "  galawI )" crlf)
))

;@@@ Added by Pramila(BU) on 18-02-2014
(defrule oversight3
(declare (salience 0))
(id-root ?id oversight)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  oversight.clp 	oversight3   "  ?id "  galawI )" crlf)
))
