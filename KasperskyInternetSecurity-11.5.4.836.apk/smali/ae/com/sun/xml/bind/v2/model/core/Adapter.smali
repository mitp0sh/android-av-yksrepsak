.class public Lae/com/sun/xml/bind/v2/model/core/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TypeT:",
        "Ljava/lang/Object;",
        "ClassDeclT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public final adapterType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TClassDeclT;"
        }
    .end annotation
.end field

.field public final customType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeT;"
        }
    .end annotation
.end field

.field public final defaultType:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V
    .locals 1
    .param p1, "spec"    # Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TTypeT;TClassDeclT;**>;",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TTypeT;TClassDeclT;**>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TTypeT;TClassDeclT;>;"
    .local p2, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TTypeT;TClassDeclT;**>;"
    .local p3, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TTypeT;TClassDeclT;**>;"
    const-string v0, "value"

    invoke-interface {p2, p1, v0}, Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;->getClassValue(Ljava/lang/annotation/Annotation;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClassDeclT;",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TTypeT;TClassDeclT;**>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TTypeT;TClassDeclT;>;"
    .local p1, "adapterType":Ljava/lang/Object;, "TClassDeclT;"
    .local p2, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TTypeT;TClassDeclT;**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->adapterType:Ljava/lang/Object;

    .line 88
    invoke-interface {p2, p1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->use(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Lae/javax/xml/bind/annotation/adapters/XmlAdapter;

    invoke-interface {p2, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->asDecl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getBaseClass(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "baseClass":Ljava/lang/Object;, "TTypeT;"
    sget-boolean v1, Lae/com/sun/xml/bind/v2/model/core/Adapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 93
    :cond_0
    invoke-interface {p2, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isParameterizedType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    .line 98
    :goto_0
    invoke-interface {p2, v0}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->isParameterizedType(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    const/4 v1, 0x1

    invoke-interface {p2, v0, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->getTypeArgument(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->customType:Ljava/lang/Object;

    .line 102
    :goto_1
    return-void

    .line 96
    :cond_1
    const-class v1, Ljava/lang/Object;

    invoke-interface {p2, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    goto :goto_0

    .line 101
    :cond_2
    const-class v1, Ljava/lang/Object;

    invoke-interface {p2, v1}, Lae/com/sun/xml/bind/v2/model/nav/Navigator;->ref(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->customType:Ljava/lang/Object;

    goto :goto_1
.end method
