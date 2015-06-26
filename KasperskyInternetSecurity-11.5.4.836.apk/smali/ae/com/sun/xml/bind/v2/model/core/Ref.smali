.class public final Lae/com/sun/xml/bind/v2/model/core/Ref;
.super Ljava/lang/Object;
.source "Ref.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;"
        }
    .end annotation
.end field

.field public final type:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final valueList:Z


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;Ljava/lang/Object;Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/javax/xml/bind/annotation/XmlList;)V
    .locals 2
    .param p4, "xjta"    # Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .param p5, "xl"    # Lae/javax/xml/bind/annotation/XmlList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader",
            "<TT;TC;**>;",
            "Lae/com/sun/xml/bind/v2/model/nav/Navigator",
            "<TT;TC;**>;TT;",
            "Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;",
            "Lae/javax/xml/bind/annotation/XmlList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<TT;TC;>;"
    .local p1, "reader":Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;, "Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader<TT;TC;**>;"
    .local p2, "nav":Lae/com/sun/xml/bind/v2/model/nav/Navigator;, "Lae/com/sun/xml/bind/v2/model/nav/Navigator<TT;TC;**>;"
    .local p3, "type":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    if-eqz p4, :cond_0

    .line 95
    new-instance v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .end local v0    # "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    invoke-direct {v0, p4, p1, p2}, Lae/com/sun/xml/bind/v2/model/core/Adapter;-><init>(Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;)V

    .line 96
    .restart local v0    # "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    iget-object p3, v0, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    .line 99
    :cond_0
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/model/core/Ref;->type:Ljava/lang/Object;

    .line 100
    iput-object v0, p0, Lae/com/sun/xml/bind/v2/model/core/Ref;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .line 101
    if-eqz p5, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lae/com/sun/xml/bind/v2/model/core/Ref;->valueList:Z

    .line 102
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;Ljava/lang/Object;Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/javax/xml/bind/annotation/XmlList;)V
    .locals 6
    .param p3, "xjta"    # Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;
    .param p4, "xl"    # Lae/javax/xml/bind/annotation/XmlList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder",
            "<TT;TC;**>;TT;",
            "Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;",
            "Lae/javax/xml/bind/annotation/XmlList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<TT;TC;>;"
    .local p1, "builder":Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;, "Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder<TT;TC;**>;"
    .local p2, "type":Ljava/lang/Object;, "TT;"
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->reader:Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;

    iget-object v2, p1, Lae/com/sun/xml/bind/v2/model/impl/ModelBuilder;->nav:Lae/com/sun/xml/bind/v2/model/nav/Navigator;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lae/com/sun/xml/bind/v2/model/core/Ref;-><init>(Lae/com/sun/xml/bind/v2/model/annotation/AnnotationReader;Lae/com/sun/xml/bind/v2/model/nav/Navigator;Ljava/lang/Object;Lae/javax/xml/bind/annotation/adapters/XmlJavaTypeAdapter;Lae/javax/xml/bind/annotation/XmlList;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<TT;TC;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lae/com/sun/xml/bind/v2/model/core/Ref;-><init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/core/Adapter;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/model/core/Adapter;Z)V
    .locals 0
    .param p3, "valueList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lae/com/sun/xml/bind/v2/model/core/Adapter",
            "<TT;TC;>;Z)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/model/core/Ref;, "Lae/com/sun/xml/bind/v2/model/core/Ref<TT;TC;>;"
    .local p1, "type":Ljava/lang/Object;, "TT;"
    .local p2, "adapter":Lae/com/sun/xml/bind/v2/model/core/Adapter;, "Lae/com/sun/xml/bind/v2/model/core/Adapter<TT;TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/model/core/Ref;->adapter:Lae/com/sun/xml/bind/v2/model/core/Adapter;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    iget-object p1, p2, Lae/com/sun/xml/bind/v2/model/core/Adapter;->defaultType:Ljava/lang/Object;

    .line 82
    :cond_0
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/model/core/Ref;->type:Ljava/lang/Object;

    .line 83
    iput-boolean p3, p0, Lae/com/sun/xml/bind/v2/model/core/Ref;->valueList:Z

    .line 84
    return-void
.end method
