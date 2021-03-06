/**
 * @copyright Copyright (c) 2021 NetEase, Inc. All rights reserved.
 *            Use of this source code is governed by a MIT license that can be found in the LICENSE file.
 */

#ifndef AUTHMANAGER_H
#define AUTHMANAGER_H

#include <QJsonArray>
#include <QObject>
#include <QTimer>
#include "base/http_manager.h"

class AuthManager : public QObject {
    Q_OBJECT
public:
    explicit AuthManager(QObject* parent = nullptr);
    ~AuthManager();

    Q_PROPERTY(QString authCodeInternal READ authCodeInternal WRITE setAuthCodeInternal NOTIFY authCodeInternalChanged)
    Q_PROPERTY(QString phonePrefix READ phonePrefix WRITE setPhonePrefix NOTIFY phonePrefixChanged)
    Q_PROPERTY(QString phoneNumber READ phoneNumber WRITE setPhoneNumber NOTIFY phoneNumberChanged)
    Q_PROPERTY(QString appUserOpenId READ appUserOpenId WRITE setAppUserOpenId NOTIFY appUserOpenIdChanged)
    Q_PROPERTY(QString appUserId READ appUserId WRITE setAppUserId NOTIFY appUserIdChanged)
    Q_PROPERTY(QString appUserToken READ appUserToken WRITE setAppUserToken NOTIFY appUserTokenChanged)
    Q_PROPERTY(QString appUserNick READ appUserNick WRITE setAppUserNick NOTIFY appUserNickChanged)
    Q_PROPERTY(QString aPaasAccountId READ aPaasAccountId WRITE setAPaasAccountId NOTIFY aPaasAccountIdChanged)
    Q_PROPERTY(QString aPaasAccountToken READ aPaasAccountToken WRITE setAPaasAccountToken NOTIFY aPaasAccountTokenChanged)
    Q_PROPERTY(QString aPaasAppKey READ aPaasAppKey WRITE setAPaasAppKey NOTIFY aPaasAppKeyChanged)
    Q_PROPERTY(bool resetPasswordFlag READ resetPasswordFlag WRITE setResetPasswordFlag NOTIFY resetPasswordFlagChanged)
    Q_PROPERTY(QString paasServerAddress READ paasServerAddress)
    Q_PROPERTY(QString paasApiVersion READ paasApiVersion)
    Q_PROPERTY(QString curDisplayCompany READ curDisplayCompany WRITE setCurDisplayCompany NOTIFY curDisplayCompanyChanged)
    Q_PROPERTY(QString curDisplayVersion READ curDisplayVersion WRITE setCurDisplayVersion NOTIFY curDisplayVersionChanged)
    Q_PROPERTY(QString maxDuration READ maxDuration WRITE setMaxDuration NOTIFY maxDurationChanged)
    Q_PROPERTY(QString maxMemberCount READ maxMemberCount WRITE setMaxMemberCount NOTIFY maxMemberCountChanged)
    Q_PROPERTY(QString extraInfo READ extraInfo WRITE setExtraInfo NOTIFY extraInfoChanged)

    QString authCodeInternal() const;
    void setAuthCodeInternal(const QString& authCodeInternal);

    QString phonePrefix() const;
    void setPhonePrefix(const QString& phonePrefix);

    QString phoneNumber() const;
    void setPhoneNumber(const QString& phoneNumber);

    QString appUserId() const;
    void setAppUserId(const QString& appUserId);

    QString appUserToken() const;
    void setAppUserToken(const QString& appUserToken);

    QString appUserNick() const;
    void setAppUserNick(const QString& appUserNick);

    QString aPaasAccountId() const;
    void setAPaasAccountId(const QString& aPaasAccountId);

    QString aPaasAccountToken() const;
    void setAPaasAccountToken(const QString& aPaasAccountToken);

    QString aPaasAppKey() const;
    void setAPaasAppKey(const QString& aPaasAppKey);

    QString appUserOpenId() const;
    void setAppUserOpenId(const QString& appUserOpenId);

    bool resetPasswordFlag() const;
    void setResetPasswordFlag(bool resetPasswordFlag);

    QString paasServerAddress() const;
    QString paasApiVersion() const { return m_paasApiVersion; }

    QString curDisplayVersion() const;
    void setCurDisplayVersion(const QString& curDisplayVersion);

    QString maxDuration() const;
    void setMaxDuration(const QString& maxDuration);

    QString maxMemberCount() const;
    void setMaxMemberCount(const QString& maxMemberCount);

    QString curDisplayCompany() const;
    void setCurDisplayCompany(const QString& curDisplayCompany);

    QString extraInfo() const;
    void setExtraInfo(const QString& extraInfo);

signals:
    /**
     * @brief error
     * ??????????????????
     * @param resCode   ????????????
     * @param object    ??????????????? json ????????????
     */
    void error(int resCode, const QJsonObject& result);
    /**
     * @brief gotAuthCode
     * ???????????????????????????
     * @param phoneNumber   ???????????????????????????
     */
    void gotAuthCode(const QString& phoneNumber);
    /**
     * @brief verifiedAuthCode
     * ?????????????????????????????????????????????????????????????????????????????????
     * @param authCodeInternal  ????????????????????????????????????????????????????????????????????????????????????
     */
    void verifiedAuthCode(const QString& authCodeInternal);
    /**
     * @brief registeredAccount
     * ??????????????????????????????
     */
    void registeredAccount();
    /**
     * @brief loggedIn
     * ??????????????????????????????
     * @param userId                ???????????????????????????ID
     * @param meetingToken          ???????????????????????????token????????????im?????????????????????????????????
     * @param imAccid               ?????????IM??????ID
     * @param imToken               ?????????IM??????ID?????????
     * @param personalMeetingId     ???????????????-???????????????
     */
    void loggedIn(const QString& userId);
    /**
     * @brief loggedOut
     * ????????????
     */
    void loggedOut(bool needsLogout, bool cleanup);
    /**
     * @brief changedPassword
     * ????????????????????????????????????
     */
    void verifiedPassword();
    /**
     * @brief resetPasswordSig
     * ????????????????????????????????????
     */
    void resetPasswordSig();
    /**
     * @brief updatedProfile
     * ????????????????????????????????????
     */
    void updatedProfile();
    /**
     * @brief loginWithSSO
     * SSO ????????????
     * @param ssoAppKey
     * @param ssoToken
     */
    void loginWithSSO(const QString& ssoAppKey, const QString& ssoToken);
    /**
     * @brief gotAccountApps
     * ???????????? app ??????
     * @param accountApps
     */
    void gotAccountApps(const QJsonArray& accountApps);
    /**
     * @brief switchedApp
     * ????????????????????????
     * @param appInfo
     */
    void switchedApp(const QJsonObject& appInfo);

    // binding values
    void authCodeInternalChanged();
    void aPassAccountId();
    void phonePrefixChanged();
    void phoneNumberChanged();
    void appUserOpenIdChanged();
    void appUserIdChanged();
    void appUserTokenChanged();
    void appUserNickChanged();
    void aPaasAccountIdChanged();
    void aPaasAccountTokenChanged();
    void aPaasAppKeyChanged();
    void resetPasswordFlagChanged();
    void loginTypeChanged();
    void curDisplayCompanyChanged();
    void curDisplayVersionChanged();
    void maxDurationChanged();
    void maxMemberCountChanged();
    void extraInfoChanged();

public slots:
    /**
     * @brief getAuthCode
     * ???????????????
     * @param phonePrefix   ????????????
     * @param phoneNumber   ?????????
     * @param scene         ???????????? GetAuthCodeScene
     */
    void getAuthCode(const QString& phonePrefix, const QString& phoneNumber, int scene);
    /**
     * @brief verifyAuthCode
     * ???????????????????????????
     * @param phonePrefix    ????????????
     * @param phoneNumber    ?????????
     * @param code           ??????????????????
     * @param scene          ????????????
     */
    void verifyAuthCode(const QString& phonePrefix, const QString& phoneNumber, const QString& code, int scene);
    /**
     * @brief registerAccount
     * ????????????
     * @param phonePreFix       ????????????
     * @param phoneNumber       ?????????
     * @param nickname          ??????
     * @param password          ??????
     */
    void registerAccount(const QString& phonePrefix, const QString& phoneNumber, const QString& nickname, const QString& password);
    /**
     * @brief registerNEAccount
     * @param phoneNumber
     * @param verifyCode
     * @param nickname
     * @param password
     * @param appKey
     */
    void registerNEAccount(const QString& phoneNumber, const QString& verifyCode, const QString& nickname, const QString& password);
    /**
     * @brief loginToHttp
     * ????????? HTTP ?????????
     * @param loginType         ?????????????????? LoginType
     * @param phonePreFix       ????????????
     * @param phoneNumber       ?????????
     * @param authValue         ??????????????????????????????????????????loginType???0??????meetingToken?????? loginType???1???????????????????????? loginType???1??????????????????
     * @param cacheUserId       ???????????? token ???????????????????????????????????? userId
     */
    void loginToHttp(int loginType,
                     const QString& phonePrefix,
                     const QString& phoneNumber,
                     const QString& authValue,
                     const QString& cacheUserId = "");

    /**
     * @brief loginByPassword
     * ?????????????????????????????????????????????
     * @param username
     * @param password
     */
    void loginByPassword(const QString& username, const QString& password);
    /**
     * @brief loginByVerifyCode
     * ?????????????????????
     * @param phoneNumber
     * @param verifyCode
     */
    void loginByVerifyCode(const QString& phoneNumber, const QString& verifyCode);
    /**
     * @brief getAccountApps
     * ???????????????????????????????????????????????????
     * @param appKey
     * @param accountId
     * @param accountToken
     */
    void getAccountApps(const QString& appKey, const QString& accountId, const QString& accountToken);
    /**
     * @brief getAccountAppInfo
     * ????????????????????????????????????
     * @param appKey
     * @param accountId
     * @param accountToken
     */
    void getAccountAppInfo(const QString& appKey, const QString& accountId, const QString& accountToken);
    /**
     * @brief switchApp
     * ????????????????????????????????????????????????????????????????????????????????????????????????
     * @param appKey
     * @param accountId
     * @param accountToken
     */
    void switchApp(const QString& appKey, const QString& accountId, const QString& accountToken);
    /**
     * @brief logout
     * ????????????????????????
     */
    void logout(bool needsLogout = true, bool cleanup = false);
    /**
     * @brief verifyPassword
     * ????????????
     * @param oldPassword       ?????????
     */
    void verifyPassword(const QString& oldPassword, const QString& userId, const QString& token);
    /**
     * @brief resetPassword
     * ????????????
     * @param phonePrefix   ????????????
     * @param phoneNumber   ?????????
     * @param newPassword   ?????????
     */
    void resetPassword(const QString& appKey, const QString& accountId, const QString& accountToken, const QString& newPassword);
    /**
     * @brief resetPasswordByVerifyCode
     * ?????????????????????????????????
     * @param phoneNumber
     * @param verifyCode
     * @param newPassword
     */
    void resetPasswordByVerifyCode(const QString& phoneNumber, const QString& verifyCode, const QString& newPassword);
    /**
     * @brief updateProfile
     * ??????????????????
     * @param nickname          ??????????????????
     */
    void updateProfile(const QString& nickname, const QString& appKey, const QString& userId, const QString& token);
    /**
     * @brief resetAuthInfo
     */
    void resetAuthInfo();

private:
    void onLoginCallback(int code, const QJsonObject& response, bool registerMode);

private:
    /* ------------------------------------------- */
    QString m_curDisplayCompany;
    QString m_curDisplayVersion;
    QString m_maxDuration;
    QString m_maxMemberCount;
    QString m_extraInfo;
    QJsonArray m_accountApps;
    /* ------------------------------------------- */
    std::shared_ptr<HttpManager> m_httpManager;
    QString m_authCodeInternal;
    QString m_phonePrefix;
    QString m_phoneNumber;
    QString m_appUserOpenId;
    QString m_appUserId;
    QString m_appUserToken;
    QString m_appUserNick;
    QString m_aPaasAccountId;
    QString m_aPaasAccountToken;
    QString m_aPaasAppKey;
    bool m_resetPasswordFlag = false;
    QString m_paasServerAddress = "https://meeting-api-test.netease.im/";
    QString m_paasApiVersion = "v1";
};

#endif  // AUTHMANAGER_H
