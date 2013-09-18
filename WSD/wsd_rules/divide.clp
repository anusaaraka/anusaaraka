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
;It has the dimensions given by the dimensions of flux divided by the dimensions of current.
;इसकी विमा प्रवाह की विमा को धारा की विमा के द्वारा भाग देने से दी गई है. 
;isakI vimA pravAha kI vimA ko XArA kI vimA ke xvArA BAga xene se xI gaI hE.


(defrule divide0
(declare (salience 5000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide0   "  ?id "  BAga_xe )" crlf))
)

;Divide it into two parts.
;इसे दो भागो में बाँट दीजिए.
;ise xo BAgo meM bAzta xIjie.
(defrule divide1
(declare (salience 5000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide1   "  ?id "  bAzta_xe )" crlf))
)


;------------------------------------------Default rules-------------------------------------------------

(defrule divide2
(declare (salience 4000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide2   "  ?id " viBAjiwa_kara  )" crlf))
)




(defrule divide3
(declare (salience 3000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vargIkaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide3   "  ?id " vargIkaraNa_kara  )" crlf))
)
