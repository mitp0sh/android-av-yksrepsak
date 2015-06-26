.class public final Lls;
.super Lqv;
.source "SourceFile"


# instance fields
.field private synthetic a:Ljava/util/List;

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Lcom/kms/antispam/ContactsBlocker;


# direct methods
.method public constructor <init>(Lcom/kms/antispam/ContactsBlocker;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lls;->c:Lcom/kms/antispam/ContactsBlocker;

    iput-object p2, p0, Lls;->a:Ljava/util/List;

    iput-object p3, p0, Lls;->b:Ljava/util/List;

    invoke-direct {p0}, Lqv;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 208
    if-nez p2, :cond_0

    .line 209
    iget-object v0, p0, Lls;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v0, p0, Lls;->c:Lcom/kms/antispam/ContactsBlocker;

    invoke-static {v0}, Lcom/kms/antispam/ContactsBlocker;->c(Lcom/kms/antispam/ContactsBlocker;)Lqs;

    move-result-object v0

    iget-object v1, p0, Lls;->c:Lcom/kms/antispam/ContactsBlocker;

    invoke-static {v1}, Lcom/kms/antispam/ContactsBlocker;->b(Lcom/kms/antispam/ContactsBlocker;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lqs;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lls;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lls;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 198
    iget-object v1, p0, Lls;->c:Lcom/kms/antispam/ContactsBlocker;

    invoke-static {v1}, Lcom/kms/antispam/ContactsBlocker;->a(Lcom/kms/antispam/ContactsBlocker;)Llv;

    move-result-object v1

    invoke-interface {v1, p2}, Llv;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lls;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lls;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    const/4 v0, 0x0

    .line 204
    :cond_0
    return v0
.end method
