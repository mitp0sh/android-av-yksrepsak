.class public Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaMine;
.super Ljava/lang/Object;
.source "XmlSchemaMine.java"

# interfaces
.implements Lae/javax/xml/bind/annotation/XmlSchema;


# instance fields
.field private namespace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaMine;->namespace:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public attributeFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->UNSET:Lae/javax/xml/bind/annotation/XmlNsForm;

    return-object v0
.end method

.method public elementFormDefault()Lae/javax/xml/bind/annotation/XmlNsForm;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lae/javax/xml/bind/annotation/XmlNsForm;->QUALIFIED:Lae/javax/xml/bind/annotation/XmlNsForm;

    return-object v0
.end method

.method public location()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaMine;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public setNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaMine;->namespace:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public xmlns()[Lae/javax/xml/bind/annotation/XmlNs;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
