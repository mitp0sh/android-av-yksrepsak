.class final Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
.super Ljava/lang/Object;
.source "AssociationMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/runtime/AssociationMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<XmlNode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TXmlNode;"
        }
    .end annotation
.end field

.field private inner:Ljava/lang/Object;

.field private outer:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .prologue
    .line 61
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .prologue
    .line 61
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;

    .prologue
    .line 61
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 61
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TXmlNode;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public inner()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->inner:Ljava/lang/Object;

    return-object v0
.end method

.method public outer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;, "Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry<TXmlNode;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/AssociationMap$Entry;->outer:Ljava/lang/Object;

    return-object v0
.end method
