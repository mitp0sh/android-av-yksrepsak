.class Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
.super Ljava/lang/Object;
.source "EnumConstantImpl.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/core/EnumConstant;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lae/com/sun/xml/bind/v2/model/core/EnumConstant",
        "<TT;TC;>;"
    }
.end annotation


# instance fields
.field protected final lexical:Ljava/lang/String;

.field protected final name:Ljava/lang/String;

.field protected final next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field

.field protected final owner:Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
            "<TT;TC;TF;TM;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;Ljava/lang/String;Ljava/lang/String;Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lexical"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl",
            "<TT;TC;TF;TM;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl",
            "<TT;TC;TF;TM;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    .local p1, "owner":Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl<TT;TC;TF;TM;>;"
    .local p4, "next":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->lexical:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    .line 62
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->name:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->next:Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;

    .line 64
    return-void
.end method


# virtual methods
.method public getEnclosingClass()Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lae/com/sun/xml/bind/v2/model/core/EnumLeafInfo",
            "<TT;TC;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->owner:Lae/com/sun/xml/bind/v2/model/impl/EnumLeafInfoImpl;

    return-object v0
.end method

.method public final getLexicalValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->lexical:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;, "Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl<TT;TC;TF;TM;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/impl/EnumConstantImpl;->name:Ljava/lang/String;

    return-object v0
.end method
