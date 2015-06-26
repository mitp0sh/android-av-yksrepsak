.class public final LT;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/io/File;)Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;
    .locals 3

    .prologue
    .line 16
    :try_start_0
    const-class v0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    new-instance v1, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaMine;

    const-string v2, ""

    invoke-direct {v1, v2}, Lae/com/sun/xml/bind/v2/model/annotation/XmlSchemaMine;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->cachePackageAnnotation(Ljava/lang/Package;Lae/javax/xml/bind/annotation/XmlSchema;)V

    .line 18
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;

    aput-object v2, v0, v1

    invoke-static {v0}, Lae/javax/xml/bind/JAXBContext;->newInstance([Ljava/lang/Class;)Lae/javax/xml/bind/JAXBContext;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lae/javax/xml/bind/JAXBContext;->createUnmarshaller()Lae/javax/xml/bind/Unmarshaller;

    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Lae/javax/xml/bind/Unmarshaller;->unmarshal(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/componenets/ipm/xml/IpmContentCustomization;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-object v0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method
