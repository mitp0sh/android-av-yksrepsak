.class public final Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;
.super Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;
.source "ListTransducedAccessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<BeanT:",
        "Ljava/lang/Object;",
        "ListT:Ljava/lang/Object;",
        "ItemT:",
        "Ljava/lang/Object;",
        "PackT:",
        "Ljava/lang/Object;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor",
        "<TBeanT;>;"
    }
.end annotation


# instance fields
.field private final acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;T",
            "ListT;",
            ">;"
        }
    .end annotation
.end field

.field private final lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;T",
            "ListT;",
            "TItemT;TPackT;>;"
        }
    .end annotation
.end field

.field private final xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TItemT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/com/sun/xml/bind/v2/runtime/Transducer;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/com/sun/xml/bind/v2/runtime/Transducer",
            "<TItemT;>;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor",
            "<TBeanT;T",
            "ListT;",
            ">;",
            "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister",
            "<TBeanT;T",
            "ListT;",
            "TItemT;TPackT;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    .local p1, "xducer":Lae/com/sun/xml/bind/v2/runtime/Transducer;, "Lae/com/sun/xml/bind/v2/runtime/Transducer<TItemT;>;"
    .local p2, "acc":Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor<TBeanT;TListT;>;"
    .local p3, "lister":Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;, "Lae/com/sun/xml/bind/v2/runtime/reflect/Lister<TBeanT;TListT;TItemT;TPackT;>;"
    invoke-direct {p0}, Lae/com/sun/xml/bind/v2/runtime/reflect/DefaultTransducedAccessor;-><init>()V

    .line 72
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    .line 73
    iput-object p3, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    .line 74
    iput-object p2, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    .line 75
    return-void
.end method

.method private processValue(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 7
    .param p2, "s"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v5, p1, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->startPacking(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)Ljava/lang/Object;

    move-result-object v3

    .line 130
    .local v3, "pack":Ljava/lang/Object;, "TPackT;"
    const/4 v0, 0x0

    .line 131
    .local v0, "idx":I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 134
    .local v1, "len":I
    :goto_0
    move v2, v0

    .line 135
    .local v2, "p":I
    :goto_1
    if-ge v2, v1, :cond_0

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    :cond_0
    invoke-interface {p2, v0, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 139
    .local v4, "token":Ljava/lang/CharSequence;
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 140
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v6, v4}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->parse(Ljava/lang/CharSequence;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->addToPack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_1
    if-ne v2, v1, :cond_3

    .line 151
    :cond_2
    iget-object v5, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    iget-object v6, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v5, v3, p1, v6}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->endPacking(Ljava/lang/Object;Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;)V

    .line 152
    return-void

    .line 144
    :cond_3
    :goto_2
    if-ge v2, v1, :cond_4

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lae/com/sun/xml/bind/WhiteSpaceProcessor;->isWhiteSpace(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    :cond_4
    if-eq v2, v1, :cond_2

    .line 148
    move v0, v2

    .line 149
    goto :goto_0
.end method


# virtual methods
.method public declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    .locals 5
    .param p2, "w"    # Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v4, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 84
    .local v3, "list":Ljava/lang/Object;, "TListT;"
    if-eqz v3, :cond_1

    .line 85
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v4, v3, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v2

    .line 87
    .local v2, "itr":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator<TItemT;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    :try_start_0
    invoke-interface {v2}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 90
    .local v1, "item":Ljava/lang/Object;, "TItemT;"
    if-eqz v1, :cond_0

    .line 91
    iget-object v4, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v4, v1, p2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->declareNamespace(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)V
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    .end local v1    # "item":Ljava/lang/Object;, "TItemT;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lae/javax/xml/bind/JAXBException;
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v0}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 98
    .end local v0    # "e":Lae/javax/xml/bind/JAXBException;
    .end local v2    # "itr":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator<TItemT;>;"
    :cond_1
    return-void
.end method

.method public hasValue(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p2, "lexical"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    .local p1, "bean":Ljava/lang/Object;, "TBeanT;"
    invoke-direct {p0, p1, p2}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->processValue(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public bridge synthetic print(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    invoke-virtual {p0, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBeanT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lae/com/sun/xml/bind/api/AccessorException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    .local p1, "o":Ljava/lang/Object;, "TBeanT;"
    const/4 v6, 0x0

    .line 104
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->acc:Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;

    invoke-virtual {v7, p1}, Lae/com/sun/xml/bind/v2/runtime/reflect/Accessor;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    .local v4, "list":Ljava/lang/Object;, "TListT;"
    if-nez v4, :cond_0

    .line 124
    :goto_0
    return-object v6

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->getInstance()Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;

    move-result-object v5

    .line 111
    .local v5, "w":Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->lister:Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;

    invoke-virtual {v7, v4, v5}, Lae/com/sun/xml/bind/v2/runtime/reflect/Lister;->iterator(Ljava/lang/Object;Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;)Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;

    move-result-object v3

    .line 113
    .local v3, "itr":Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator<TItemT;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 115
    :try_start_0
    invoke-interface {v3}, Lae/com/sun/xml/bind/v2/runtime/reflect/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, "item":Ljava/lang/Object;, "TItemT;"
    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    :cond_2
    iget-object v7, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v7, v2}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->print(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lae/javax/xml/bind/JAXBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 120
    .end local v2    # "item":Ljava/lang/Object;, "TItemT;"
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Lae/javax/xml/bind/JAXBException;
    invoke-virtual {v5, v6, v1}, Lae/com/sun/xml/bind/v2/runtime/XMLSerializer;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 124
    .end local v1    # "e":Lae/javax/xml/bind/JAXBException;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public useNamespace()Z
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;, "Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl<TBeanT;TListT;TItemT;TPackT;>;"
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/reflect/ListTransducedAccessorImpl;->xducer:Lae/com/sun/xml/bind/v2/runtime/Transducer;

    invoke-interface {v0}, Lae/com/sun/xml/bind/v2/runtime/Transducer;->useNamespace()Z

    move-result v0

    return v0
.end method
