.class final Lae/com/sun/xml/bind/v2/model/impl/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calcExpectedMediaType(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;)Ljavax/activation/MimeType;
    .locals 8
    .param p0, "primarySource"    # Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;
    .param p1, "builder"    # Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;

    .prologue
    const/4 v2, 0x0

    .line 95
    const-class v3, Lae/javax/xml/bind/annotation/XmlMimeType;

    invoke-interface {p0, v3}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lae/javax/xml/bind/annotation/XmlMimeType;

    .line 96
    .local v1, "xmt":Lae/javax/xml/bind/annotation/XmlMimeType;
    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-object v2

    .line 100
    :cond_0
    :try_start_0
    new-instance v3, Ljavax/activation/MimeType;

    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlMimeType;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljavax/activation/MimeTypeParseException;
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;

    sget-object v4, Lae/com/sun/xml/bind/v2/model/impl/Messages;->ILLEGAL_MIME_TYPE:Lae/com/sun/xml/bind/v2/model/impl/Messages;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Lae/javax/xml/bind/annotation/XmlMimeType;->value()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljavax/activation/MimeTypeParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lae/com/sun/xml/bind/v2/model/impl/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;-><init>(Ljava/lang/String;Ljava/lang/annotation/Annotation;)V

    invoke-virtual {p1, v3}, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reportError(Lae/com/sun/xml/bind/v2/runtime/IllegalAnnotationException;)V

    goto :goto_0
.end method

.method static calcSchemaType(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljavax/xml/namespace/QName;
    .locals 10
    .param p1, "primarySource"    # Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;
    .param p4, "src"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
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
            ">(",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;TF;TM;>;",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;",
            "TC;TT;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")",
            "Ljavax/xml/namespace/QName;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;TF;TM;>;"
    .local p2, "enclosingClass":Ljava/lang/Object;, "TC;"
    .local p3, "individualType":Ljava/lang/Object;, "TT;"
    const-class v7, Lae/javax/xml/bind/annotation/XmlSchemaType;

    invoke-interface {p1, v7}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationSource;->readAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lae/javax/xml/bind/annotation/XmlSchemaType;

    .line 66
    .local v5, "xst":Lae/javax/xml/bind/annotation/XmlSchemaType;
    if-eqz v5, :cond_0

    .line 67
    new-instance v7, Ljavax/xml/namespace/QName;

    invoke-interface {v5}, Lae/javax/xml/bind/annotation/XmlSchemaType;->namespace()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5}, Lae/javax/xml/bind/annotation/XmlSchemaType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-object v7

    .line 71
    :cond_0
    const-class v7, Lae/javax/xml/bind/annotation/XmlSchemaTypes;

    invoke-interface {p0, v7, p2, p4}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lae/javax/xml/bind/annotation/XmlSchemaTypes;

    .line 72
    .local v6, "xsts":Lae/javax/xml/bind/annotation/XmlSchemaTypes;
    const/4 v4, 0x0

    .line 73
    .local v4, "values":[Lae/javax/xml/bind/annotation/XmlSchemaType;
    if-eqz v6, :cond_2

    .line 74
    invoke-interface {v6}, Lae/javax/xml/bind/annotation/XmlSchemaTypes;->value()[Lae/javax/xml/bind/annotation/XmlSchemaType;

    move-result-object v4

    .line 82
    :cond_1
    :goto_1
    if-eqz v4, :cond_4

    .line 83
    move-object v0, v4

    .local v0, "arr$":[Lae/javax/xml/bind/annotation/XmlSchemaType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 84
    .local v2, "item":Lae/javax/xml/bind/annotation/XmlSchemaType;
    const-string v7, "type"

    invoke-interface {p0, v2, v7}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    new-instance v7, Ljavax/xml/namespace/QName;

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlSchemaType;->namespace()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lae/javax/xml/bind/annotation/XmlSchemaType;->name()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0    # "arr$":[Lae/javax/xml/bind/annotation/XmlSchemaType;
    .end local v1    # "i$":I
    .end local v2    # "item":Lae/javax/xml/bind/annotation/XmlSchemaType;
    .end local v3    # "len$":I
    :cond_2
    const-class v7, Lae/javax/xml/bind/annotation/XmlSchemaType;

    invoke-interface {p0, v7, p2, p4}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    .end local v5    # "xst":Lae/javax/xml/bind/annotation/XmlSchemaType;
    check-cast v5, Lae/javax/xml/bind/annotation/XmlSchemaType;

    .line 77
    .restart local v5    # "xst":Lae/javax/xml/bind/annotation/XmlSchemaType;
    if-eqz v5, :cond_1

    .line 78
    const/4 v7, 0x1

    new-array v4, v7, [Lae/javax/xml/bind/annotation/XmlSchemaType;

    .line 79
    const/4 v7, 0x0

    aput-object v5, v4, v7

    goto :goto_1

    .line 83
    .restart local v0    # "arr$":[Lae/javax/xml/bind/annotation/XmlSchemaType;
    .restart local v1    # "i$":I
    .restart local v2    # "item":Lae/javax/xml/bind/annotation/XmlSchemaType;
    .restart local v3    # "len$":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 90
    .end local v0    # "arr$":[Lae/javax/xml/bind/annotation/XmlSchemaType;
    .end local v1    # "i$":I
    .end local v2    # "item":Lae/javax/xml/bind/annotation/XmlSchemaType;
    .end local v3    # "len$":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method
