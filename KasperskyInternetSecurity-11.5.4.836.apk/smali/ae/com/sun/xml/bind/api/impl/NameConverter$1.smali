.class final Lae/com/sun/xml/bind/api/impl/NameConverter$1;
.super Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;
.source "NameConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/api/impl/NameConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;-><init>()V

    return-void
.end method


# virtual methods
.method protected classify(C)I
    .locals 1
    .param p1, "c0"    # C

    .prologue
    .line 274
    const/16 v0, 0x5f

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    .line 275
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->classify(C)I

    move-result v0

    goto :goto_0
.end method

.method protected isLetter(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 270
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isPunct(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 266
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x387

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6dd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6de

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
