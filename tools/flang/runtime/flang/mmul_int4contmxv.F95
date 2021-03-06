! 
! Copyright (c) 2017, NVIDIA CORPORATION.  All rights reserved.
!
! Licensed under the Apache License, Version 2.0 (the "License");
! you may not use this file except in compliance with the License.
! You may obtain a copy of the License at
!
!     http://www.apache.org/licenses/LICENSE-2.0
!
! Unless required by applicable law or agreed to in writing, software
! distributed under the License is distributed on an "AS IS" BASIS,
! WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
! See the License for the specific language governing permissions and
! limitations under the License.
! 


#include "mmul_dir.h"

subroutine F90_matmul_int4_contmxv(dest, src1, src2, k_extent, m_extent)

  DESC_INT k_extent
  DESC_INT m_extent
  INTEGER*4, dimension(k_extent,m_extent)  :: src1
  INTEGER*4, dimension(m_extent) :: src2
  INTEGER*4, dimension(k_extent) :: dest

  DESC_INT k
  DESC_INT m

  do k=1,k_extent
    dest(k) = 0
  end do
  do m=1,m_extent
    do k=1,k_extent
      dest(k) = dest(k) + src1(k,m) * src2(m)
    end do
  end do

end subroutine
