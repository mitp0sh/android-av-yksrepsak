.class Lcom/sun/xml/txw2/Document$1;
.super Ljava/lang/Object;
.source "Document.java"

# interfaces
.implements Lcom/sun/xml/txw2/ContentVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/xml/txw2/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/sun/xml/txw2/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    const-class v0, Lcom/sun/xml/txw2/Document;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/xml/txw2/Document$1;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sun/xml/txw2/Document;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCdata(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$200(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # invokes: Lcom/sun/xml/txw2/Document;->fixPrefix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lcom/sun/xml/txw2/Document;->access$300(Lcom/sun/xml/txw2/Document;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/xml/txw2/output/XmlSerializer;->cdata(Ljava/lang/StringBuilder;)V

    .line 204
    return-void
.end method

.method public onComment(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$200(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # invokes: Lcom/sun/xml/txw2/Document;->fixPrefix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lcom/sun/xml/txw2/Document;->access$300(Lcom/sun/xml/txw2/Document;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/xml/txw2/output/XmlSerializer;->comment(Ljava/lang/StringBuilder;)V

    .line 210
    return-void
.end method

.method public onEndDocument()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/xml/txw2/output/XmlSerializer;->endDocument()V

    .line 186
    return-void
.end method

.method public onEndTag()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/xml/txw2/output/XmlSerializer;->endTag()V

    .line 190
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/xml/txw2/NamespaceSupport;->popContext()V

    .line 191
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    const/4 v1, 0x0

    # setter for: Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;
    invoke-static {v0, v1}, Lcom/sun/xml/txw2/Document;->access$202(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceDecl;)Lcom/sun/xml/txw2/NamespaceDecl;

    .line 192
    return-void
.end method

.method public onPcdata(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$200(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # invokes: Lcom/sun/xml/txw2/Document;->fixPrefix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    invoke-static {v0, p1}, Lcom/sun/xml/txw2/Document;->access$300(Lcom/sun/xml/txw2/Document;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v0}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sun/xml/txw2/output/XmlSerializer;->text(Ljava/lang/StringBuilder;)V

    .line 198
    return-void
.end method

.method public onStartDocument()V
    .locals 1

    .prologue
    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onStartTag(Ljava/lang/String;Ljava/lang/String;Lcom/sun/xml/txw2/Attribute;Lcom/sun/xml/txw2/NamespaceDecl;)V
    .locals 10
    .param p1, "nsUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attributes"    # Lcom/sun/xml/txw2/Attribute;
    .param p4, "namespaces"    # Lcom/sun/xml/txw2/NamespaceDecl;

    .prologue
    const/4 v8, 0x1

    .line 213
    sget-boolean v5, Lcom/sun/xml/txw2/Document$1;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 214
    :cond_0
    sget-boolean v5, Lcom/sun/xml/txw2/Document$1;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 216
    :cond_1
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # setter for: Lcom/sun/xml/txw2/Document;->activeNamespaces:Lcom/sun/xml/txw2/NamespaceDecl;
    invoke-static {v5, p4}, Lcom/sun/xml/txw2/Document;->access$202(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/NamespaceDecl;)Lcom/sun/xml/txw2/NamespaceDecl;

    .line 218
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->started:Z
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$400(Lcom/sun/xml/txw2/Document;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 219
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # setter for: Lcom/sun/xml/txw2/Document;->started:Z
    invoke-static {v5, v8}, Lcom/sun/xml/txw2/Document;->access$402(Lcom/sun/xml/txw2/Document;Z)Z

    .line 220
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v5

    invoke-interface {v5}, Lcom/sun/xml/txw2/output/XmlSerializer;->startDocument()V

    .line 223
    :cond_2
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/xml/txw2/NamespaceSupport;->pushContext()V

    .line 226
    move-object v1, p4

    .local v1, "ns":Lcom/sun/xml/txw2/NamespaceDecl;
    :goto_0
    if-eqz v1, :cond_5

    .line 227
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/sun/xml/txw2/NamespaceDecl;->declared:Z

    .line 229
    iget-object v5, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 230
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    iget-object v6, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sun/xml/txw2/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "uri":Ljava/lang/String;
    if-eqz v4, :cond_4

    iget-object v5, v1, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 226
    .end local v4    # "uri":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v1, v1, Lcom/sun/xml/txw2/NamespaceDecl;->next:Lcom/sun/xml/txw2/NamespaceDecl;

    goto :goto_0

    .line 235
    .restart local v4    # "uri":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    iget-object v6, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    iget-object v7, v1, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/sun/xml/txw2/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 236
    iput-boolean v8, v1, Lcom/sun/xml/txw2/NamespaceDecl;->declared:Z

    goto :goto_1

    .line 242
    .end local v4    # "uri":Ljava/lang/String;
    :cond_5
    move-object v1, p4

    :goto_2
    if-eqz v1, :cond_a

    .line 243
    iget-object v5, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    if-nez v5, :cond_6

    .line 244
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/sun/xml/txw2/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    const-string v5, ""

    iput-object v5, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    .line 242
    :cond_6
    :goto_3
    iget-object v1, v1, Lcom/sun/xml/txw2/NamespaceDecl;->next:Lcom/sun/xml/txw2/NamespaceDecl;

    goto :goto_2

    .line 247
    :cond_7
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    iget-object v6, v1, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sun/xml/txw2/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "p":Ljava/lang/String;
    if-nez v2, :cond_9

    .line 250
    :cond_8
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    iget-object v6, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # invokes: Lcom/sun/xml/txw2/Document;->newPrefix()Ljava/lang/String;
    invoke-static {v6}, Lcom/sun/xml/txw2/Document;->access$500(Lcom/sun/xml/txw2/Document;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/sun/xml/txw2/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    .line 252
    iput-boolean v8, v1, Lcom/sun/xml/txw2/NamespaceDecl;->declared:Z

    .line 253
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    iget-object v6, v1, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Lcom/sun/xml/txw2/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 255
    :cond_9
    iput-object v2, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    goto :goto_3

    .line 261
    .end local v2    # "p":Ljava/lang/String;
    :cond_a
    sget-boolean v5, Lcom/sun/xml/txw2/Document$1;->$assertionsDisabled:Z

    if-nez v5, :cond_b

    iget-object v5, p4, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 262
    :cond_b
    sget-boolean v5, Lcom/sun/xml/txw2/Document$1;->$assertionsDisabled:Z

    if-nez v5, :cond_c

    iget-object v5, p4, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    if-nez v5, :cond_c

    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "a prefix must have been all allocated"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 263
    :cond_c
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v5

    iget-object v6, p4, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    invoke-interface {v5, p1, p2, v6}, Lcom/sun/xml/txw2/output/XmlSerializer;->beginStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    move-object v1, p4

    :goto_4
    if-eqz v1, :cond_e

    .line 267
    iget-boolean v5, v1, Lcom/sun/xml/txw2/NamespaceDecl;->declared:Z

    if-eqz v5, :cond_d

    .line 268
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v5

    iget-object v6, v1, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    iget-object v7, v1, Lcom/sun/xml/txw2/NamespaceDecl;->uri:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/sun/xml/txw2/output/XmlSerializer;->writeXmlns(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_d
    iget-object v1, v1, Lcom/sun/xml/txw2/NamespaceDecl;->next:Lcom/sun/xml/txw2/NamespaceDecl;

    goto :goto_4

    .line 272
    :cond_e
    move-object v0, p3

    .local v0, "a":Lcom/sun/xml/txw2/Attribute;
    :goto_5
    if-eqz v0, :cond_10

    .line 274
    iget-object v5, v0, Lcom/sun/xml/txw2/Attribute;->nsUri:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    const-string v3, ""

    .line 276
    .local v3, "prefix":Ljava/lang/String;
    :goto_6
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v5

    iget-object v6, v0, Lcom/sun/xml/txw2/Attribute;->nsUri:Ljava/lang/String;

    iget-object v7, v0, Lcom/sun/xml/txw2/Attribute;->localName:Ljava/lang/String;

    iget-object v8, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    iget-object v9, v0, Lcom/sun/xml/txw2/Attribute;->value:Ljava/lang/StringBuilder;

    # invokes: Lcom/sun/xml/txw2/Document;->fixPrefix(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    invoke-static {v8, v9}, Lcom/sun/xml/txw2/Document;->access$300(Lcom/sun/xml/txw2/Document;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v6, v7, v3, v8}, Lcom/sun/xml/txw2/output/XmlSerializer;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 272
    iget-object v0, v0, Lcom/sun/xml/txw2/Attribute;->next:Lcom/sun/xml/txw2/Attribute;

    goto :goto_5

    .line 275
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_f
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->inscopeNamespace:Lcom/sun/xml/txw2/NamespaceSupport;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$100(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/NamespaceSupport;

    move-result-object v5

    iget-object v6, v0, Lcom/sun/xml/txw2/Attribute;->nsUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sun/xml/txw2/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_6

    .line 279
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_10
    iget-object v5, p0, Lcom/sun/xml/txw2/Document$1;->this$0:Lcom/sun/xml/txw2/Document;

    # getter for: Lcom/sun/xml/txw2/Document;->out:Lcom/sun/xml/txw2/output/XmlSerializer;
    invoke-static {v5}, Lcom/sun/xml/txw2/Document;->access$000(Lcom/sun/xml/txw2/Document;)Lcom/sun/xml/txw2/output/XmlSerializer;

    move-result-object v5

    iget-object v6, p4, Lcom/sun/xml/txw2/NamespaceDecl;->prefix:Ljava/lang/String;

    invoke-interface {v5, p1, p2, v6}, Lcom/sun/xml/txw2/output/XmlSerializer;->endStartTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method
