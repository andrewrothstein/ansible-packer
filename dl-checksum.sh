#!/usr/bin/env sh
APP=packer
VER=${1:-1.4.5}
DIR=~/Downloads
MIRROR=https://releases.hashicorp.com/${APP}/${VER}

CHECKSUMS=${APP}_${VER}_SHA256SUMS
LCHECKSUMS=$DIR/$CHECKSUMS
RCHECKSUMS=$MIRROR/$CHECKSUMS

if [ ! -e $DIR/$CHECKSUMS ];
then
    wget -q -O $LCHECKSUMS $RCHECKSUMS
fi


dl()
{
    local os=$1
    local arch=$2
    local platform=${os}_${arch}
    local file=${APP}_${VER}_${platform}.zip
    local url=$MIRROR/$file

    printf "    # %s\n" $url
    printf "    %s: sha256:%s\n" $platform `grep $file $LCHECKSUMS | awk '{print $1}'`
}

printf "  # %s\n" $RCHECKSUMS
printf "  '%s':\n" $VER
dl darwin 386
dl darwin amd64
dl freebsd 386
dl freebsd amd64
dl linux 386
dl linux amd64
dl linux arm
dl linux arm64
dl linux mips
dl linux mips64
dl linux mipsle
dl linux ppc64le
dl linux s390x
dl openbsd 386
dl openbsd amd64
dl solaris amd64
dl windows 386
dl windows amd64
