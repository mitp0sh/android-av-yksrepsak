.class abstract Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;
.super Ljava/lang/Object;
.source "XmlSchemaGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ElementDeclaration"
.end annotation


# instance fields
.field final synthetic this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;


# direct methods
.method constructor <init>(Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;)V
    .locals 0

    .prologue
    .line 1413
    .local p0, "this":Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;, "Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator<TT;TC;TF;TM;>.Namespace.ElementDeclaration;"
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace$ElementDeclaration;->this$1:Lae/com/sun/xml/bind/v2/schemagen/XmlSchemaGenerator$Namespace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract writeTo(Ljava/lang/String;Lae/com/sun/xml/bind/v2/schemagen/xmlschema/Schema;)V
.end method
