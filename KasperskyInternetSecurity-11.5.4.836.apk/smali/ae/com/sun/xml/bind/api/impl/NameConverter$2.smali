.class final Lae/com/sun/xml/bind/api/impl/NameConverter$2;
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
    .line 282
    invoke-direct {p0}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;-><init>()V

    return-void
.end method


# virtual methods
.method public toConstantName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-super {p0, p1}, Lae/com/sun/xml/bind/api/impl/NameConverter$Standard;->toConstantName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lae/com/sun/xml/bind/api/impl/NameUtil;->isJavaIdentifier(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
