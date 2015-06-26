.class final Lwg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LbR;


# instance fields
.field private synthetic a:Lwf;


# direct methods
.method constructor <init>(Lwf;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lwg;->a:Lwf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbS;)V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->SettingClicked:Lcom/kms/UiEventType;

    iget-object v2, p0, Lwg;->a:Lwf;

    invoke-static {v2}, Lwf;->a(Lwf;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 31
    return-void
.end method
