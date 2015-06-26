.class public final Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;
.super Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;
.source "RuntimeInlineAnnotationReader.java"

# interfaces
.implements Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl",
        "<",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/Class;",
        "Ljava/lang/reflect/Field;",
        "Ljava/lang/reflect/Method;",
        ">;",
        "Lae/com/sun/xml/bind/v2/model/annotation/RuntimeAnnotationReader;"
    }
.end annotation


# static fields
.field private static final packageXmlSchemaAnnotationsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Package;",
            "Lae/javax/xml/bind/annotation/XmlSchema;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final packageCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Package;",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->packageXmlSchemaAnnotationsCache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/model/annotation/AbstractInlineAnnotationReaderImpl;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->packageCache:Ljava/util/Map;

    return-void
.end method

.method public static final cachePackageAnnotation(Ljava/lang/Package;Lae/javax/xml/bind/annotation/XmlSchema;)V
    .locals 1
    .param p0, "p"    # Ljava/lang/Package;
    .param p1, "xmlSchema"    # Lae/javax/xml/bind/annotation/XmlSchema;

    .prologue
    .line 127
    sget-object v0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->packageXmlSchemaAnnotationsCache:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method


# virtual methods
.method protected bridge synthetic fullName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->fullName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected fullName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAllFieldAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/reflect/Field;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getAllFieldAnnotations(Ljava/lang/reflect/Field;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAllFieldAnnotations(Ljava/lang/reflect/Field;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p2, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 76
    .local v1, "r":[Ljava/lang/annotation/Annotation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 77
    aget-object v2, v1, v0

    invoke-static {v2, p2}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    return-object v1
.end method

.method public bridge synthetic getAllMethodAnnotations(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/reflect/Method;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getAllMethodAnnotations(Ljava/lang/reflect/Method;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAllMethodAnnotations(Ljava/lang/reflect/Method;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)[Ljava/lang/annotation/Annotation;
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 91
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 92
    .local v1, "r":[Ljava/lang/annotation/Annotation;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 93
    aget-object v2, v1, v0

    invoke-static {v2, p2}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method public getClassAnnotation(Ljava/lang/Class;Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0, p3}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getClassAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getClassAnnotation(Ljava/lang/Class;Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getClassArrayValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/Class;
    .locals 3
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    check-cast v1, [Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getClassArrayValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getClassArrayValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "a"    # Ljava/lang/annotation/Annotation;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 176
    :try_start_0
    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v1

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/InternalError;

    sget-object v2, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->CLASS_NOT_FOUND:Lae/com/sun/xml/bind/v2/model/annotation/Messages;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lae/com/sun/xml/bind/v2/model/annotation/Messages;->format([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 183
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/annotation/Annotation;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/reflect/Field;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getFieldAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Field;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getFieldAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Field;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/reflect/Field;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0, p3}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/reflect/Method;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0, p3}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMethodParameterAnnotation(Ljava/lang/Class;Ljava/lang/Object;ILae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I
    .param p4, "x3"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getMethodParameterAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;ILae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getMethodParameterAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;ILae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 6
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "paramIndex"    # I
    .param p4, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    aget-object v4, v5, p3

    .line 100
    .local v4, "pa":[Ljava/lang/annotation/Annotation;
    move-object v1, v4

    .local v1, "arr$":[Ljava/lang/annotation/Annotation;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 101
    .local v0, "a":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p1, :cond_0

    .line 102
    invoke-static {v0, p4}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    .line 104
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :goto_1
    return-object v5

    .line 100
    .restart local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "a":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 8
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "srcPos"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;",
            "Ljava/lang/Class;",
            "Lae/com/sun/xml/bind/v2/model/annotation/Locatable;",
            ")TA;"
        }
    .end annotation

    .prologue
    .local p1, "a":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    const/4 v1, 0x0

    .line 133
    invoke-virtual {p2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    .line 134
    .local v4, "p":Ljava/lang/Package;
    if-nez v4, :cond_1

    .line 135
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t getPackage for class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-object v1

    .line 140
    :cond_1
    const-class v5, Lae/javax/xml/bind/annotation/XmlSchema;

    if-ne p1, v5, :cond_2

    .line 142
    sget-object v5, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->packageXmlSchemaAnnotationsCache:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    .line 143
    .local v1, "anno":Ljava/lang/annotation/Annotation;
    if-nez v1, :cond_0

    .line 144
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No XmlSchema annotation found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    .end local v1    # "anno":Ljava/lang/annotation/Annotation;
    :cond_2
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->packageCache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 150
    .local v2, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Package;Ljava/lang/annotation/Annotation;>;"
    if-nez v2, :cond_3

    .line 151
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Package;Ljava/lang/annotation/Annotation;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 152
    .restart local v2    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Package;Ljava/lang/annotation/Annotation;>;"
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->packageCache:Ljava/util/Map;

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 156
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/annotation/Annotation;

    move-object v1, v5

    goto :goto_0

    .line 159
    :cond_4
    :try_start_0
    invoke-virtual {v4, p1}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    invoke-static {v5, p3}, Lae/com/sun/xml/bind/v2/model/annotation/LocatableAnnotation;->create(Ljava/lang/annotation/Annotation;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 160
    .local v0, "ann":Ljava/lang/annotation/Annotation;, "TA;"
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    .line 161
    goto :goto_0

    .line 162
    .end local v0    # "ann":Ljava/lang/annotation/Annotation;, "TA;"
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/UnsatisfiedLinkError;
    goto :goto_0
.end method

.method public bridge synthetic getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lae/com/sun/xml/bind/v2/model/annotation/Locatable;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->getPackageAnnotation(Ljava/lang/Class;Ljava/lang/Class;Lae/com/sun/xml/bind/v2/model/annotation/Locatable;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public hasClassAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasClassAnnotation(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Class;

    .prologue
    .line 59
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->hasClassAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/reflect/Field;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0
.end method

.method public hasFieldAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 59
    check-cast p2, Ljava/lang/reflect/Method;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lae/com/sun/xml/bind/v2/model/annotation/RuntimeInlineAnnotationReader;->hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public hasMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Z
    .locals 1
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
