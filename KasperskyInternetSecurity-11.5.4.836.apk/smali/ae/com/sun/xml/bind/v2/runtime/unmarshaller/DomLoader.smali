.class public Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;
.super Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;
.source "DomLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT::",
        "Ljavax/xml/transform/Result;",
        ">",
        "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;"
    }
.end annotation


# instance fields
.field private final dom:Lae/javax/xml/bind/annotation/DomHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lae/javax/xml/bind/annotation/DomHandler",
            "<*TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lae/javax/xml/bind/annotation/DomHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lae/javax/xml/bind/annotation/DomHandler",
            "<*TResultT;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>;"
    .local p1, "dom":Lae/javax/xml/bind/annotation/DomHandler;, "Lae/javax/xml/bind/annotation/DomHandler<*TResultT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;-><init>(Z)V

    .line 111
    iput-object p1, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;->dom:Lae/javax/xml/bind/annotation/DomHandler;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;)Lae/javax/xml/bind/annotation/DomHandler;
    .locals 1
    .param p0, "x0"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;

    .prologue
    .line 56
    iget-object v0, p0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;->dom:Lae/javax/xml/bind/annotation/DomHandler;

    return-object v0
.end method


# virtual methods
.method public childElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 2
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>;"
    iput-object p0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->loader:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/Loader;

    .line 133
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->prev:Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;

    iget-object v0, v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;

    .line 134
    .local v0, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    iget v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->depth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->depth:I

    .line 135
    iput-object v0, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public leaveElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 7
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>;"
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;

    .line 154
    .local v2, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 157
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    :try_start_0
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$200(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v3

    iget-object v4, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v5, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getQname()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Ljavax/xml/transform/sax/TransformerHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getNewlyDeclaredPrefixes()[Ljava/lang/String;

    move-result-object v3

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->undeclarePrefixes([Ljava/lang/String;)V
    invoke-static {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$300(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;[Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    iget v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->depth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->depth:I

    if-nez v3, :cond_0

    .line 167
    :try_start_1
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getAllDeclaredPrefixes()[Ljava/lang/String;

    move-result-object v3

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->undeclarePrefixes([Ljava/lang/String;)V
    invoke-static {v2, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$300(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;[Ljava/lang/String;)V

    .line 168
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$200(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v3

    invoke-interface {v3}, Ljavax/xml/transform/sax/TransformerHandler;->endDocument()V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    .line 175
    invoke-virtual {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->getElement()Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 177
    :cond_0
    return-void

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 161
    throw v1

    .line 169
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 170
    .restart local v1    # "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 171
    throw v1
.end method

.method public startElement(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;)V
    .locals 8
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "ea"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>;"
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v0

    .line 117
    .local v0, "context":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;
    iget-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 118
    new-instance v3, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;

    invoke-direct {v3, p0, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;-><init>(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;)V

    iput-object v3, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    .line 120
    :cond_0
    iget-object v2, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;

    .line 122
    .local v2, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    :try_start_0
    invoke-virtual {v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->getNewlyDeclaredPrefixes()[Ljava/lang/String;

    move-result-object v3

    # invokes: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->declarePrefixes(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;[Ljava/lang/String;)V
    invoke-static {v2, v0, v3}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$100(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;[Ljava/lang/String;)V

    .line 123
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;
    invoke-static {v2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$200(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v3

    iget-object v4, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->uri:Ljava/lang/String;

    iget-object v5, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->local:Ljava/lang/String;

    invoke-virtual {p2}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->getQname()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/TagName;->atts:Lorg/xml/sax/Attributes;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/xml/transform/sax/TransformerHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return-void

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0, v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 126
    throw v1
.end method

.method public text(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "state"    # Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>;"
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    iget-object v1, p1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->target:Ljava/lang/Object;

    check-cast v1, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;

    .line 144
    .local v1, "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    # getter for: Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->handler:Ljavax/xml/transform/sax/TransformerHandler;
    invoke-static {v1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;->access$200(Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Ljavax/xml/transform/sax/TransformerHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 145
    .end local v1    # "s":Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader$State;, "Lae/com/sun/xml/bind/v2/runtime/unmarshaller/DomLoader<TResultT;>.State;"
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {p1}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext$State;->getContext()Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lae/com/sun/xml/bind/v2/runtime/unmarshaller/UnmarshallingContext;->handleError(Ljava/lang/Exception;)V

    .line 147
    throw v0
.end method
