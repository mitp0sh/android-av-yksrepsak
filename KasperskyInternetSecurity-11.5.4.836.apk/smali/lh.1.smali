.class final Llh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbR;


# instance fields
.field private synthetic a:Llg;


# direct methods
.method constructor <init>(Llg;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Llh;->a:Llg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbS;)V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->OpenAntispamBlockedContacts:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 134
    return-void
.end method
