.class final enum Lae/com/sun/xml/bind/v2/schemagen/Form$3;
.super Lae/com/sun/xml/bind/v2/schemagen/Form;
.source "Form.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;Z)V
    .locals 6
    .param p3, "x0"    # Lae/javax/xml/bind/annotation/XmlNsForm;
    .param p4, "x1"    # Z

    .prologue
    .line 70
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/schemagen/Form;-><init>(Ljava/lang/String;ILae/javax/xml/bind/annotation/XmlNsForm;ZLae/com/sun/xml/bind/v2/schemagen/Form$1;)V

    return-void
.end method


# virtual methods
.method declare(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V
    .locals 0
    .param p1, "attName"    # Ljava/lang/String;
    .param p2, "schema"    # Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;

    .prologue
    .line 72
    return-void
.end method
