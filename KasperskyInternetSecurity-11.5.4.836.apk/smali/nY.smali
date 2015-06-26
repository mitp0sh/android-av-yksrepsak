.class public final LnY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, LnY;->c:Z

    .line 16
    const/4 v0, 0x6

    iput v0, p0, LnY;->a:I

    .line 17
    iput-object p2, p0, LnY;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    iget-boolean v0, p0, LnY;->c:Z

    if-eqz v0, :cond_1

    .line 23
    iput-boolean v3, p0, LnY;->c:Z

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LnY;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    iget v0, p0, LnY;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 31
    iget-object v2, p0, LnY;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    iget v2, p0, LnY;->a:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, LnY;->c:Z

    .line 36
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
