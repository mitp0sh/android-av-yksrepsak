.class abstract Lcom/sun/xml/txw2/Content;
.super Ljava/lang/Object;
.source "Content.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private next:Lcom/sun/xml/txw2/Content;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/sun/xml/txw2/Content;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sun/xml/txw2/Content;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract accept(Lcom/sun/xml/txw2/ContentVisitor;)V
.end method

.method abstract concludesPendingStartTag()Z
.end method

.method final getNext()Lcom/sun/xml/txw2/Content;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sun/xml/txw2/Content;->next:Lcom/sun/xml/txw2/Content;

    return-object v0
.end method

.method isReadyToCommit()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method final setNext(Lcom/sun/xml/txw2/Document;Lcom/sun/xml/txw2/Content;)V
    .locals 3
    .param p1, "doc"    # Lcom/sun/xml/txw2/Document;
    .param p2, "next"    # Lcom/sun/xml/txw2/Content;

    .prologue
    .line 65
    sget-boolean v0, Lcom/sun/xml/txw2/Content;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_0
    sget-boolean v0, Lcom/sun/xml/txw2/Content;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/xml/txw2/Content;->next:Lcom/sun/xml/txw2/Content;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/xml/txw2/Content;->next:Lcom/sun/xml/txw2/Content;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 67
    :cond_1
    iput-object p2, p0, Lcom/sun/xml/txw2/Content;->next:Lcom/sun/xml/txw2/Content;

    .line 68
    invoke-virtual {p1}, Lcom/sun/xml/txw2/Document;->run()V

    .line 69
    return-void
.end method

.method public written()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method
