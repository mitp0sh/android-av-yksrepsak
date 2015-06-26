.class Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:LcP;

.field private synthetic b:Lcom/kms/ipm/gui/ShowIpmMessageActivity;


# direct methods
.method constructor <init>(Lcom/kms/ipm/gui/ShowIpmMessageActivity;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;->b:Lcom/kms/ipm/gui/ShowIpmMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, LcP;

    invoke-direct {v0}, LcP;-><init>()V

    iput-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;->a:LcP;

    return-void
.end method


# virtual methods
.method public getTemplateSubstitutionText(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/kms/ipm/gui/ShowIpmMessageActivity$IpmCommandHandler;->a:LcP;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LcP;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    return-object v0
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public reportStatistics(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 285
    const-string v0, "Callback script"

    const-string v1, "Report stat - do nothing."

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    return-void
.end method
